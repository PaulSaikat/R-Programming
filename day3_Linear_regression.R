rm(list=ls())
dat<-read.table("data_day4.txt",header=T,sep="\t",row.names=1)
y<-dat[,1]
#g2<-dat[,3]
g7<-dat[,8]
g20<-dat[,21]
#univariate linear regression model
L1<-lm(y~g20)
#multivariate linear regression model
L2<-lm(y~g7+g20)
