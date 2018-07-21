####################################################
#                Linear Regression                #
#               celsius to Fahrenheit            #
##################################################

rm(list=ls())

# Values of celsius
celsius <- c(0,13,120,-40)

# Values of fahrenheit.
fahrenheit <- c(32,55.4,248,-40)

relation <- lm(fahrenheit~celsius)

plot(fahrenheit,celsius,abline(relation))

#find 140 degree celsius = ? fahrenheit
a <- data.frame(celsius=140)
result <- predict(relation,a)
print(result)
