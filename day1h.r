rm(list = ls())
#reacding a CSV file
d1<-read.csv('prima-indians-diabetes.csv',header=FALSE)
d2<-read.table('HR.txt',header=TRUE,sep='\t',row.names = 1) 
#row.name=1 means row has some name,1 is true, so it's skipped here
#SEP='\t' tab separated file

#-------------------------------------------------------------------------
#json file reading
install.packages("rjson")
library('rjson')
d3<-fromJSON(file='office.json')
#converting json file to R data frame
dat<-as.data.frame(d3)

#------------------------------------------------------------------------