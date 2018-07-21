rm(list = ls())
set.seed(42)
df  <- data.frame(weight=rnorm(10,120,10),height=rnorm(10,160,20))

#finf the rows which has weight more than 120 and sort them based on height
#option 1
df1 <- df[df$weight > 120, ]
df2 <- df1[order(df1$height),]

#option 2
df3<-subset(df,weight > 120)[order(subset(df,weight > 120)$height),] 


#option 3
install.packages('data.table',dependencies = TRUE)
library(data.table)
dt <- data.table(df)
dt[weight>120][order(height)]

#--------------------------------------------------------------
#CSV file reading
rm=(list=ls())
dat<-read.csv('office.csv')
#find max salaried employee
dat1<-subset(dat,salary==max(salary))

#find who works in IT depertment
dat2<-subset(dat,dept=='IT')

#find who joined after 2014-01-01
dat4<-subset(dat,as.Date(start_date)>as.Date("2014-01-01"))
