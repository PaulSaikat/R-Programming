rm(list = ls())
#Vector
r<-c(5,7,-5,8,2.5)
c<-c("R","Python","SAS")
g<-1:10
g1<-seq(10,30,5)
print(g1)
g2<-seq(100,10,-15)
print(g2)
g3<-seq(0,1,0.1)
print(g3)
g4<-seq(5.7,15.8,length=6)
print(g4)
m1<-matrix(g4,nrow=2)  #by deafult, its column filling
print(m1)
m2<-matrix(g4,nrow=2,byrow=TRUE)
print(m2)

#list
L<-list(g4,c,m1)
print(L)


#combining two array
g5<-c(g4,g3)
print(g5)


#indexing
g5[2:5]  #its a sequential
g5_subset<-g5[c(3,6)]
print(g5_subset)


#Assign value 
n<-length(g5)
g5[n+1]<-80
#print(g5)

g5[25]=100
#print(g5)

#assiging more than one value
g5[26:28]<-c(110,120,130)

#removing 1st two element
g5<-g5[-(1:2)]
g5<-g5[-(17:22)]

#combine multiple matrix
m3<-rbind(m1,m2)
m3[1,2:3]
m3[1,]
m3[,1]
m3[c(1,3),]

#delete row
m3[-1,]

#instert new row
m3<-rbind(m3,c(5,10,15))
m3<-cbind(m3,c(2,4,6,8,10))

#attach row and column names
colnames(m3)<-c('sub1','sub2','sub3','sub4','sub5','sub6')
rownames(m3)<-c('stud1','stud3','stud3','stud4','stud5')
#dimnames(m3)<-list(c('stud1'...'stud4',),c('sub1','sub2','sub3','sub4','sub5','sub6')

#fetching data from List
L[[1]]
L[[1]][1:3]
L[[1]][c(1,3)]


#field name in list
L<-list(f1=g4,f2=c,f3=m1)

#appnding field in list
L[[4]]<-c(100,200,300)
