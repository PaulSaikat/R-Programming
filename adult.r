library(ggplot2)
rm(list=ls())

y1 <- read.csv("F:/R Programming/adult.csv")

print(y1)
b = plot(y1$Sl.No, y1$Age)

i = 0
n <- nrow(y1)
x = 0
AvgAge = 0
TotAge = 0

print("displaying adult -->")
for (i in 1:n){
  if (y1$Age[i] >= '19'){
    print(y1[i,])
    x = x+1
    TotAge = TotAge + y1$Age[i]
  }
  i = i+1
}

AvgAge = TotAge / n

print (paste("total person: ",n))
print (paste("total adult: ",x))
print (paste("Avarage age: ",AvgAge))

