#liniar regreassion model
rm(list=ls())
dat<-read.csv('insurance.csv',header= FALSE)
colnames(dat)<-c("claims","payment")

#applying Liniar model before standarization
x<-dat$claims
y<-dat$payment
L1<-lm(y~x)

#applying Liniar model after standarization
x1<-(x-mean(x))/sd(x)
y1<-(y-mean(y))/sd(y)
L2<-lm(y1~x1)

#no change in summary
summary(L1)
summary(L2)
