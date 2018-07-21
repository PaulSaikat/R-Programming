#List data type
#This can hold vector,matrix and dataframe
n<-c(2,3,5)
s<-c("aa","bb","cc","dd")
b<-cbind(c(2,9,0),c(6,5,1))
s1<-list(n,s,b)
ss<-s1[[3]][1] #list slicing
#field identifier for list
v1<-list(marks=c(86,59,73),subject=c("maths","physics","chemistry"))
#Defining a Data frame
sm<-s[-3]
s2<-data.frame(n,sm,b)
rownames(s2)<-c("stud1","stud2","stud3")
#Array datatype
A<-array(rnorm(18),dim=c(3,3,2))
B<-array(c(0.05043643,-1.87561282,1.51920273,-0.84916998,0.33103530,2.60500200,-0.96049490,-0.14606588),dim=c(2,2,2))


