rm(list=ls())
dat<-read.table("HR.txt",header=TRUE,sep="\t",row.names = 1)

#found how many still in company and how many left
ff<-table(dat$Attrition) 
barplot(ff)
barplot(ff,col=c("red","blue"))
barplot(ff,col=rainbow(10))

#how many male female
f<-table(dat$Gender)
pie(f)

#overlayed barplot
f3<-table(dat$Attrition,dat$Gender)
barplot(f3,legend=row.names(f3),col=c("red","blue"),main="comaprison barplot")

#clustered barplot
barplot(f3,col=c("red","blue"),beside = TRUE)


#z-test
x1<-f3[2,1] #total male emp that left the company
x2<-f3[2,2] #total female emp that left the company
n1<-f3[1,1]+f3[2,1] #total number of male emp
n2<-f3[1,2]+f3[2,2] #total number of femle emp


p1<-x1/n1 #propotion of male emp who left
p2<-x2/n2 #propotion of female emp who left

ppooled<-(x1+x2)/(n1+n2) #proportion of male and female emp who left
#calculete test statistic
zdata<-(p1-p2)/sqrt(ppooled*(1-ppooled)*((1/n1)+(1/n2)))
#find p-value
pvalue<-2*pnorm(abs(zdata),lower.tail = FALSE)
zdata;pvalue


#p-value is high hence accpet the null hyp
#ie no signigicant diffenrce in proportion


#-----------------------------------------------------    
#calculate the mean of monthly salary in respect of gender
#histogram of monthly income
hist(dat$MonthlyIncome,col=rainbow(10))
#box plot of monthly income
boxplot(dat$MonthlyIncome)
#comparitive box plot - montly income compared to gender
boxplot(dat$MonthlyIncome~dat$Gender)
boxplot(dat$MonthlyIncome~dat$Education,col=rainbow(10))

n1<-f[1] #number of male
n2<-f[2] #number of female
M<-tapply(dat$MonthlyIncome,dat$Gender,mean) #mean value
xbar1<-M[1]
xbar2<-M[2]
# there are two sample now
#two sample means we will apply t-Test
S<-tapply(dat$MonthlyIncome,dat$Gender,sd) #standard deviation
s1<-S[1]
s2<-S[2]

dfs<-min(n1-1,n2-1)

#calculate test-statistics
tdata<-(xbar1-xbar2)/sqrt((s1^2/n1)+(s2^2/n2))

#calculare the p-value (2-tailded)
pvalue<-2*pt(tdata,df=dfs,lower.tail = FALSE)

tdata;pvalue
#high p-value indicates, fail to reject null hyp ie there is no significant differnt in mean salary


#------------------------------------------------------
#ANOVA f-test - more than two groups
res<-aov(dat$MonthlyIncome~dat$Education)
summary(res)
