####################################################
#                Mean Value                       #
##################################################

rm(list=ls())

#Create a vector.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5)
# Find Mean.
result.mean <- mean(x)
print(result.mean)

#When trim =0.3, 3 values from each end will be dropped from the calculations to find mean.
result.mean.trim <- mean(x,trim=3)
print(result.mean.trim)


# Find mean dropping NA values.
x <- c(12,7,3,4.2,18,2,54,-21,8,-5,NA)
result.mean.na <- mean(x,na.rm = TRUE)
print(result.mean.na)