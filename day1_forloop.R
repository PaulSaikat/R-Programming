rm(list=ls())
#usage of for-loop
x<-c(3,1,-4,5,2,7,-3)
a<-c('sudha','anand','maha')
b<-0
for (i in c(1:length(a)))
  b[i]<-a[i]

y<-0
k<-1
for (i in c(1:length(x))) #by index
{
  if (x[i]>0)
  {
  y[k]<-x[i]
  k<-k+1
  }
}
print(y)
  
  y[i]<-x[i]+100

for (dat in x)  #by value
  print(dat+100)





for (x in seq(from=2,to=10,by=2))print(sqrt(x))





for (x in c(3,5,9,0,2))print(x^2)

A<-c(9,-5,2,3,0,1,4,12)
B<-0
for (i in c(1:length(A)))
{
  B[i]<-2*A[i]+10
 
}
print(B)







for (x in c(2,-4,5,7,3)) {
  y<-2*x+10
  print(y)
}
y<-0
for (i in seq(from=2, to=8, by=2)) {
  y[i]<-2*A[i]+10
  print(y[i])
}

