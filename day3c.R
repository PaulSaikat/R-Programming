#liniar regreassion model
rm(list=ls())
dat<-read.csv('insurance.csv',header= FALSE)
colnames(dat)<-c("claims","payment")

#Liniar method function.
L<-lm(dat$payment~dat$claims)
plot(dat$claims,dat$payment,col="blue",main="LR Model")
abline(L,col="red")

#find the prediction
payment_predict <- L$coefficients[1] + L$coefficients[2] * dat$claims

#root mean square value
rmse<-sqrt(sum((dat$payment-payment_predict)^2)/nrow(dat))