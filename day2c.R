rm(list=ls())
library('dplyr')
library(MASS)
data("Cars93")
x<-Cars93
dim(x)
head(x)
summary(x) #will show summary statistics of data to find if we have outlines.
#found NA in Rear.seat.room & Luggage.room
#OR 
complete.cases(x) #if false, that row has missing value

#Option 1
#simple row deletion process for NA values
new_dat <- na.omit(x)
dim(new_dat)
na.action(new_dat) #rows which were deleted

#Option 2
#replace the missing value with mean value
ind<-0; k<-1
for(i in c(1:length(x$Rear.seat.room))) #i: 1 to 93
{
  if (is.na(x$Rear.seat.room[i]))
  {
    ind[k]<-i;k<-k+1
  }
}
x$Rear.seat.room[ind] <- mean(na.omit(x$Rear.seat.room))

#Option 3
#replace the missing value with median value
ind<-0; k<-1
for(i in c(1:length(x$Luggage.room))) #i: 1 to 93
{
  if (is.na(x$Luggage.room[i]))
  {
    ind[k]<-i;k<-k+1
  }
}
x$Luggage.room[ind] <- median(na.omit(x$Luggage.room))


#----------------------------------------------------------------------------------------
ind2<-0; p<-1
for(i in c(1:length(x$Luggage.room))) #i: 1 to 93
{
  if (is.na(x$Luggage.room[i]))
  {
    ind2[p]<-i;p<-p+1
  }
}
x$Luggage.room[ind2] <- mean(na.omit(x$Luggage.room))  #this will assign mean value
x$Luggage.room[ind2] <- sample(na.omit(x$Luggage.room),length(ind2)) #this will assign sample value / random number

#----------------------------------------------------------------------------------------

