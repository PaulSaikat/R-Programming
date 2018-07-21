rm(list=ls())
#Random Forest Classification 
library(caret)
library(randomForest)
dat<-read.table("data_day4.txt",header=T,sep="\t",row.names=1)
x<-scale(dat[,2:ncol(dat)]) #both centered and scaled
c1<-dat[,1]#Response variable (LABELS)
y1<-ifelse(c1>mean(c1),1,0)
newdata<-cbind(y1,x)
#split the data 60% for training & 40% for testing
split<-createDataPartition(y=newdata[,1],p=0.6,list=FALSE)
dat_train<-newdata[split,]
dat_test<-newdata[-split,]
#apply RandomForest
rfRes<-randomForest(y=as.factor(dat_train[,1]),x=dat_train[,2:ncol(dat_train)],importance = TRUE)
varImpPlot(rfRes)
new_predict<-as.matrix(predict(rfRes,dat_test))
actual<-dat_test[,1]
out<-cbind(as.matrix(actual),new_predict)
#confusion matrix for train data
cm<-rfRes$confusion
#confusion matrix for test data
c1<-0;c2<-0;c3<-0;c4<-0
for (i in 1:length(new_predict))
{
  if (actual[i]==0 & new_predict[i]==0)
   c1<-c1+1
  else
  if (actual[i]==0 & new_predict[i]==1)
   c2<-c2+1
else
  if (actual[i]==1 & new_predict[i]==0)
   c3<-c3+1
  else
  if (actual[i]==1 & new_predict[i]==1)
  c4<-c4+1
}
cm2<-rbind(c(c1,c2),c(c3,c4))






