#usage of if-else control structure
rm(list=ls())
a<-c(5,7,2,9)
aa<-ifelse(a>mean(a),10,0)





b<-c(0,0,1,1,1,0,0,0,1,1,0,0)
y<-ifelse(b==0,"NO","YES")






A<-c(9,-5,2,-3,0,1,-4,12)
B<-0
for (i in c(1:length(A)))
{
  ifelse(A[i]<0,B[i]<-0,B[i]<-A[i])
}

y1<-matrix(y,nrow=12,ncol=1,byrow=FALSE)
