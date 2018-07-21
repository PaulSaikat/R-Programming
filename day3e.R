#multi-liniar analysis
rm(list=ls())
data("mtcars")
dat<-mtcars
M<-cor(dat)
y<-dat$mpg
x1<-dat$disp
x2<-dat$hp
x3<-dat$wt

#single varient 
L1<-lm(dat$mpg~dat$disp)
L2<-lm(dat$mpg~dat$hp)
L3<-lm(dat$mpg~dat$wt)
#check summary to find R-suqred value and p-Value
#high p-Vlaue indicates that we can reject null-hypothysis
summary(L1)
summary(L2)
summary(L3)

y1_predict<-L1$coefficients[1]+L1$coefficients[2]*x1
y2_predict<-L2$coefficients[1]+L2$coefficients[2]*x2
y3_predict<-L3$coefficients[1]+L3$coefficients[2]*x3

#rmsc square
r1<-sqrt(sum((y-y1_predict)^2)/length(y))
r2<-sqrt(sum((y-y2_predict)^2)/length(y))
r3<-sqrt(sum((y-y3_predict)^2)/length(y)) #<- this has lower score, so it's better among these 3

#-------------------------------------------------
#bi-variant / multi-varient
L4<-lm(dat$mpg~dat$disp+dat$hp)
L5<-lm(dat$mpg~dat$disp+dat$wt)
L6<-lm(dat$mpg~dat$wt+dat$hp) #<-- this one has star for all. passed statistical test.
#check for the star rating to find which is passing statistical test
summary(L4)
summary(L5)
summary(L6)

#as we already forud L6 passed the statistical test
y6_predict<-L6$coefficients[1]+L6$coefficients[2]*x3+L6$coefficients[3]*x2
r6<-sqrt(sum((y-y6_predict)^2)/length(y))
#value is r6 is very low, so we will choose this relation

#------------------------------------
#3rd order or above - polynomial regresstion model
L7<-lm(dat$mpg~dat$disp+dat$hp+dat$wt)
summary(L7)  #<-- star is missing, so not a good score

