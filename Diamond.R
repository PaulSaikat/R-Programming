#install.packages("ggplot2")
library(ggplot2)

# diamond is build in data table
head(diamonds)
tail(diamonds)

#scatter plot
b = qplot(diamonds$carat, diamonds$price, col = diamonds$clarity)
b

