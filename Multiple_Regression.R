####################################################
#                Multiple Regression              #
##################################################

rm(list=ls())

library(MASS)

input <- mtcars[,c("mpg","disp","hp","wt")]
# Create the relationship model.
model <- lm(mpg~disp+hp+wt, data=input)
# Show the model.
print(model)
# Get the Intercept and coefficients as vector elements.
a <- coef(model)[1]
print(a)

Xdisp <- coef(model)[2]
print(Xdisp)

Xhp <- coef(model)[3]
print(Xhp)

Xwt <- coef(model)[4]
print(Xwt)

#regression model formula, take the data from above coefficient
#Y = a+Xdisp.x1+Xhp.x2+Xwt.x3
#For a car with disp = 221, hp = 102 and wt = 2.91 the predicted mileage is:
Y = 37.105505 + (-0.0009370091)*221 + (-0.03115655)*102 + (-3.800891)*2.91 
print(Y)