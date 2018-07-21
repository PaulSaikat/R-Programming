rm(list=ls())
data("mtcars")
plot(mtcars$disp,mtcars$mpg)

#co-related check - if its negative, then its negative co-related
cor(mtcars$disp,mtcars$mpg)

#check the corelation martix
M<-cor(mtcars)
  
#install.packages("corrplot",dependencies = TRUE)
library(corrplot)
#check the corelation martix with color code
corrplot(M,method = "number")