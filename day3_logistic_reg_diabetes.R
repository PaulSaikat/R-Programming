rm(list=ls())
x<-read.csv('prima-indians-diabetes.csv',header = FALSE)
#UCI Repository (University of California Irvine)
colnames(x)<-c("preg","glu","Bp","sft","Ins","BMI","DPF","Age","Class")
M<-cor(x)
y<-x$Class
x1<-x$glu
x2<-x$BMI
x3<-x$Age
x4<-x$preg
b1<-sum((x1-mean(x1))*(y-mean(y)))/sum((x1-mean(x1))^2)
b2<-sum((x2-mean(x2))*(y-mean(y)))/sum((x2-mean(x2))^2)
b3<-sum((x3-mean(x3))*(y-mean(y)))/sum((x3-mean(x3))^2)
b4<-sum((x4-mean(x4))*(y-mean(y)))/sum((x4-mean(x4))^2)
b0<-mean(y)-b1*mean(x1)-b2*mean(x2)-b3*mean(x3)-b4*mean(x4)
#Logistic Regression
y_predict<-1/(1+exp(-b0-b1*x1-b2*x2-b3*x3-b4*x4))
out<-0;count<-0
for (i in c(1:length(y_predict)))
{
  ifelse(y_predict[i]>mean(y_predict),out[i]<-1,out[i]<-0)
  if (out[i]==y[i])
    count<-count+1
}
ca<-count/nrow(x)
ca
c1<-0;c2<-0;c3<-0;c4<-0
for (i in 1:length(out))
{
  if (out[i]==0 & y[i]==0)
    c1<-c1+1
  else
    if (out[i]==0 & y[i]==1)
      c2<-c2+1
    else
      if (out[i]==1 & y[i]==0)
        c3<-c3+1
      else
        if (out[i]==1 & y[i]==1)
          c4<-c4+1
}
cm<-rbind(c(c1,c3),c(c2,c4))
cm


