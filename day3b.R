#liniar regreassion model
rm(list=ls())
sales<-c(850,1360,1610,1900)
amt<-c(15.6,20.4,22.5,25)
plot(amt,sales)

#univariant
#formula for beta1 = cor(sales)/var(amt) = E((x -x bar)*(y - y bar))/E(x - x bar)^2   --> E means summation
beta1 <- sum((amt-mean(amt))*(sales-mean(sales))) / sum((amt-mean(amt))^2)
#formula for beta0 = y bar - beta1 * x bar
beta0 <- mean(sales) - beta1*(mean(amt))

#predicted value
sale_predict <- beta0+beta1*amt
