rm(list = ls())
#factor data type
g<-c('Male','Female','Male','Male','Female')
class(g)
table(g)
nlevels(g)

g1<-factor(g) #be default alphabetic order
g1<-factor(g,levels=c('Male','Female')) #we can specify the order
nlevels(g1)

#array data type
A<-array(c(7,3,-8,4,2.5,9,1,3.3),dim=c(2,2,2),dimnames=list(c("r1","r2"),c("C1","C2"),c("Martix1","Marix2")))


#fetching the array
A[,,1]
A[1,,2]

#DataFrame
dept<-c('CSE','ECE','CSE')
stud<-data.frame(gender=c('Male','Female','Female'),dept,cgpa=c(7.30,6.84,8.36))
rownames(stud)<-c('stud1','stud2','stud3')

stud['stud1']

#
