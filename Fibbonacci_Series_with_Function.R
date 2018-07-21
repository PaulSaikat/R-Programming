####################################################
#   FIBBONACCI Series with user defined function  #
##################################################

rm(list=ls())

p<-0
q<-1
s<-0
fibbo_fuc<-function(a){
  print(p)
  print(q)
  for(i in 1:a){
    s<-p+q
    print(s)
    p<-q
    q<-s
  }
}

#Enter the number of occurance.
fibbo_fuc(20)
