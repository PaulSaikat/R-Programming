#outliers
rm(list=ls())
library(MASS)
data("Boston")
x<-Boston

#find the Q3+3IQR - this is formula
summary(x$rm)
IQR <- summary(x$rm)[5]-summary(x$rm)[2]
summary(x$rm)[5] + 3*IQR

#
a<-x$rm
chk<-abs(a-mean(a))
#finding the thresold value
thresh<-2.58*sd(a)

#checking which are crossing thresold value
idx<-0;k<-1
for (i in c(1:length(a)))
{
  if (chk[i]>thresh)
  {
    idx[k]<-i;
    k<-k+1
    }
}
a1<-a[-idx]

#delete the record which has threshold values
x1<-x[-idx,]

#method-2
#random re-spampling method

#replacing the values which coressed threshold limit
a[idx]<-sample(a1,length(idx))

#replace the vlaue in x(data frame)
x$rm[idx]<-sample(a1,length(idx))
#or
x$rm[idx]<-mean(a1,length(idx))
#or
x$rm[idx]<-median(a1,length(idx))

#histogram
hist(x$rm,col=rainbow(10))


#--------------------------------------------------------------
x <- c(1:10, 20, 30)
boxplot.stats(x)$out
boxplot.stats(x, coef = 1.92)$out
