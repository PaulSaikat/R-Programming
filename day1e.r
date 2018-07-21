rm(list = ls())
#user define function
#random number generation
rnorm(10)
marks1<-rnorm(50,65,1.5)
marks2<-rnorm(50,65,5.5)

dat<-marks2[1:10]


#user define function in R
my_stat<-function(x)
{
  x1<-min(x)
  x2<-max(x)
  x3<-mean(x)
  x4<-median(x)
  return(list(my_min=x1,my_max=x2,my_mean=x3,my_median=x4))
# we can also wirte 
# return(list(x1,x2,x3,x4))
# return(c(x1,x2,x3,x4))
}

result<-my_stat(dat)


#-------------------------------------------------------------------------#
# accessing same randome number
set.seed(43);rnorm(3)
set.seed(43);rnorm(3)

