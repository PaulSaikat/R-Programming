#### Mahesh will share the code


rm(list=LS())
#neural network model
#install.packages("caret",dependencies = TRUE)
library(caret)
x<-read.csv('prima-indians-diabetes.csv',header = FALSE)
colnames(x)<-c("preg","glu","Bp","sft","Ins","BMI","DRF","Age","Class")
y<-x[,ncol(x)] #Response variable (class labels)
x<-x[,-ncol(x)]

newdata<-scale(x)

#split the data 60% for trining & 40% for testing
split<-createDataPartition(y,p=0.6,list=FALSE)

dat_train<-newdata[split,]
dat_test<-newdata[-split,]

#splitting the class lebel
y_train<-y[split]
y_test<-y[-split]

#calculation of net
net<-0
