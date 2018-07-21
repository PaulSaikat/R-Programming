rm(list=ls())
library(caret)
x<-read.csv('prima-indians-diabetes.csv',header = FALSE)
colnames(x)<-c("preg","glu","Bp","sft","Ins","BMI","DPF","Age","Class")
y<-x[,ncol(x)]#Response variable (LABELS)
x<-x[,-ncol(x)]

newdata<-scale(x)








#split the data 60% for training & 40% for testing
split<-createDataPartition(y,p=0.6,list=FALSE)






dat_train<-newdata[split,]
dat_test<-newdata[-split,]





y_train<-y[split]
y_test<-y[-split]







#calculation of NET
net<-0
epoch<-0;rate<-0.5
w<-rnorm(ncol(dat_train)) #equals to b1 to b8 (weights)
wb<-rnorm(1) #equals to b0
while(epoch<100)
{
  #initialize weights with random values or zeros
  for (i in 1:nrow(dat_train))
  {
    net<-wb+sum(dat_train[i,]*w)
    out<-1/(1+exp(-net))   #Activation Function
    error<-(y_train[i]-out)
    w<-w+rate*error*dat_train[i,]*out*(1-out) #Delta learning rule
    wb<-wb+rate*error*out*(1-out)
  }
  epoch<-epoch+1
}
#testing
y_predict<-0
for (i in 1:nrow(dat_test))
{
  net[i]<-wb+sum(dat_test[i,]*w)
  y_predict[i]<-1/(1+exp(-net[i]))
}
new_predict<-ifelse(y_predict>mean(y_predict),1,0)

#confusion matrix
#confusion matrix for test data
c1<-0;c2<-0;c3<-0;c4<-0
for (i in 1:length(new_predict))
{
  if (y_test[i]==0 & new_predict[i]==0)
    c1<-c1+1 #TN
  else
    if (y_test[i]==0 & new_predict[i]==1)
      c2<-c2+1 #FP
    else
      if (y_test[i]==1 & new_predict[i]==0)
        c3<-c3+1 #FN
      else
        if (y_test[i]==1 & new_predict[i]==1)
          c4<-c4+1 #TP
}
cm<-rbind(c(c1,c2),c(c3,c4))
cm
#overall classification accuracy
CA=(c1+c4)/(c1+c2+c3+c4)
print(CA*100)


