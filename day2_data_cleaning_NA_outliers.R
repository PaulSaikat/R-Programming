rm(list=ls())
library(MASS)
data("Cars93")
x<-Cars93












complete.cases(x)




ind<-0;k<-1
for (i in c(1:length(x$Rear.seat.room)))  #i : 1 to 93
{
  if (is.na(x$Rear.seat.room[i]))
  {
    ind[k]<-i;k<-k+1
  }
}
x$Rear.seat.room[ind]<-mean(na.omit(x$Rear.seat.room))


f<-table(x$DriveTrain)
m<-names(f)[f==max(f)] #calculation of mode
x[12,1]<-m
#Insert an outlier
x[15,2]<-64
x[15,2]<-0
x[15,2]<-mean(x$Rear.seat.room)
#replace missing value with random sampling
ind2<-0;p<-1
for (k in c(1:length(x$Luggage.room)))
{
  if (is.na(x$Luggage.room[k]))
  {
    ind2[p]<-k;p<-p+1
  }
    
}
x$Luggage.room[ind2]<-mean(na.omit(x$Luggage.room))

x$Luggage.room[ind2]<-sample(na.omit(x$Luggage.room),length(ind2))













