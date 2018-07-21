rm(list=LS())
#predict the housing values-coloumn name medv
library(MASS)
data(Boston)
dat<-Boston
M<-cor(dat)
plot(dat$lstat,dat$medv)
y<-dat$medv
x1<-dat$lstat

#quadratic model - upto 5th order model may pass
L1<-lm(dat$medv~dat$lstat+I(dat$lstat^2))
L2<-lm(dat$medv~dat$lstat+I(dat$lstat^2)+I(dat$lstat^3))
L3<-lm(dat$medv~dat$lstat+I(dat$lstat^2)+I(dat$lstat^3)+I(dat$lstat^4))
L4<-lm(dat$medv~dat$lstat+I(dat$lstat^2)+I(dat$lstat^3)+I(dat$lstat^4)+I(dat$lstat^5))
L5<-lm(dat$medv~dat$lstat+I(dat$lstat^2)+I(dat$lstat^3)+I(dat$lstat^4)+I(dat$lstat^5)+I(dat$lstat^6))
L6<-lm(dat$medv~dat$lstat+I(dat$lstat^2)+I(dat$lstat^3)+I(dat$lstat^4)+I(dat$lstat^5)+I(dat$lstat^6)+I(dat$lstat^7))

#6th order is failed
summary(L1)
summary(L2)
summary(L3)
summary(L4)
summary(L5)
summary(L6)
