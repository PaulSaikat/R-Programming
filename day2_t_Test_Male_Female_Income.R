rm(list=ls())
dat<-read.table("HR.txt",header = TRUE,sep = "\t",row.names = 1)
f<-table(dat$Gender)
n1<-f[1]#number of male
n2<-f[2]#number of female
M<-tapply(dat$MonthlyIncome,dat$Gender,mean)
S<-tapply(dat$MonthlyIncome,dat$Gender,sd)
xbar1<-M[1]
xbar2<-M[2]
s1<-S[1]
s2<-S[2]
dfs<-min(n1-1,n2-1)
#calculate test-statistic
tdata<-(xbar1-xbar2)/sqrt((s1^2/n1)+(s2^2/n2))
#calculate the p-value (2-tailed)
pvalue<-2*pt(tdata,df=dfs,lower.tail = FALSE)
tdata;pvalue
#high p-value indicates, fail to reject null hyp ie., there is no 
#significant difference in means



