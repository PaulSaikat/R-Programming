####################################################
#                Line Graph                       #
##################################################

rm(list=ls())
dat<-read.csv('car_data.csv')

data <- data.frame(dat$mpg,dat$hp)
plot(data, type = "p")
