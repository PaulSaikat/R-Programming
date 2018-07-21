rm(list=ls())
library(MASS)
library(ISLR)
data("Boston")
cm<-cor(Boston)
library(corrplot)
corrplot(cm,method = "number")
par(mfrow=c(2,2))
plot(Boston$rm,Boston$medv)
plot(Boston$lstat,Boston$medv)
plot(Boston$ptratio,Boston$medv)
plot(Boston$indus,Boston$medv)
par(mfrow=c(1,1))
#Univariate Linear Regression
y1<-lm(Boston$medv~Boston$rm)
summary(y1)
y2<-lm(Boston$medv~Boston$lstat)
summary(y2)
#Bivariate LR
y3<-lm(Boston$medv~Boston$rm+Boston$lstat)
summary(y3)
#Multivariate LR
y5<-lm(Boston$medv~Boston$rm+Boston$lstat+Boston$indus)
summary(y5)
#quadradic Regression
y4<-lm(Boston$medv~Boston$lstat+I(Boston$lstat^2))
summary(y4)
#polynomial Regression
y6<-lm(Boston$medv~poly(Boston$lstat,5))
summary(y6)


        