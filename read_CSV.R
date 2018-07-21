####################################################
#                Read CSV file                    #
##################################################

rm(list=ls())
dat<-read.csv('office.csv')
dat1<-subset(dat,salary==max(salary))
#get all the people working in IT dept
dat2<-subset(dat,dept=='IT')
print(dat2)
#get all the people working in IT dept and saleary > 600
dat3<-subset(dat,salary>600 & dept=='IT')
print(dat3)
#get the people who joined on or after 2014
dat4<-subset(dat,as.Date(start_date)>as.Date("2014-01-01"))
print(dat4)
