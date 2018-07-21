rm(list=ls())
#Ho: p_train (0s)=p_test (0's)
x1<-306
x2<-194
n1<-306+155  
n2<-194+113
p1<-x1/n1;p2<-x2/n2
ppooled<-(x1+x2)/(n1+n2)
#calculate test statistic
zdata<-(p1-p2)/sqrt(ppooled*(1-ppooled)*((1/n1)+(1/n2)))
#find p-value
pvalue<-2*pnorm(abs(zdata),lower.tail = FALSE)
zdata;pvalue
#p-value is high (0.3643) hence accept the null hyp, 
#ie no siginifacnt difference in proportions of 0's in train & test samples

#Ho: p_train (1's)=p_test (1's)
x1<-155
x2<-113
n1<-306+155  
n2<-194+113
p1<-x1/n1;p2<-x2/n2
ppooled<-(x1+x2)/(n1+n2)
#calculate test statistic
zdata<-(p1-p2)/sqrt(ppooled*(1-ppooled)*((1/n1)+(1/n2)))
#find p-value
pvalue<-2*pnorm(abs(zdata),lower.tail = FALSE)
zdata;pvalue
#p-value is high (0.3643) hence accept the null hyp, 
#ie no siginifacnt difference in proportions of 1's in train & test samples


