rm(list=ls())
x<-read.csv("prima-indians-diabetes.csv",header=F)
preg<-x[,1]
glu<-x[,2]
age<-x[,8]
class<-x[,9]
#Anova f-test to check mean glucose level vary according to pregnancy
res<-aov(glu~preg)
summary(res)
#High F value, and small p-value indicates, null hypothesis is rejected
#it means we accept there is significant variation in means with respect to 
#pregnancy
age_mean<-tapply(age,class,mean)#mean age
age_sd<-tapply(age,class,sd)#mean age
f<-table(class)
n1<-f[1];n2<-f[2]
dfs<-min(c(n1,n2))
tdata<-(age_mean[1]-age_mean[2])/sqrt((age_sd[1]^2/n1)+(age_sd[2]^2/n2))
pvalue<-2*pt(tdata,df=dfs,lower.tail = FALSE)
tdata;pvalue
#High p-value(2) indicates Accept the null hypothesis, ie means are equal,
#no significant difference in mean age with respect to diabetes

