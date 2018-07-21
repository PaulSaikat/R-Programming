rm(list=ls())
library(MASS)
data("Boston")
x<-Boston
a<-x$rm
chk<-abs(a-mean(a))
thresh<-2.58*sd(a)

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
#method-1
#deletion of records
x1<-x[-idx,]

#method-2
#Random Re-sampling method
a[idx]<-sample(a1,length(idx))
#replace the value in x (data frame)
x$rm[idx]<-sample(a1,length(idx))





