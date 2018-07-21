####################################################
#                Median Value                     #
##################################################

rm(list=ls())

#Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)

#The middle most value in a data series is called the median
result.median <- median(x, na.rm = TRUE)
print(result.median)