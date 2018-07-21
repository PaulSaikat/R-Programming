rm(list = ls())
a<-rbind(c(1,2),c(2,3))
b<-rbind(c(2,3),c(1,4))
a*b #element wise multiplicatoin
a/b #element wise division
a%*%b #matrix multiplication

5%%2  #reminder of the division
7%/%2 #cosiant of the division

#complex number in vector
s1<-c(3,1,TRUE,2+3i)
s2<-c(4,0,FALSE,2+4i)
s1&s2   #logical and operation, non zero element is TRUE
s1|s2   #logical or
!s1     # logical not

#If Else
ifelse(-3,"R","Pyhton")   #(True/False, if True, else)
