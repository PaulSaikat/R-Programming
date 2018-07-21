####################################################
# Data Set Information:
#  Predicting the age of abalone from physical measurements. The age of abalone is determined by cutting 
# the shell through the cone, staining it, and counting the number of rings through a microscope
# -- a boring and time-consuming task. Other measurements, which are easier to obtain, are used to predict the age. 
# Further information, such as weather patterns and location (hence food availability) may be required to 
# solve the problem. 
# From the original data examples with missing values were removed (the majority having the predicted value missing),
# and the ranges of the continuous values have been scaled for use with an ANN (by dividing by 200).
##################################################

rm(list=ls())
dat <- read.csv('Abalone.csv',header=TRUE, sep=",")
head(dat)

input <- dat[,c("Rings","Whole.Weight","Height","Shucked.Weight","Viscera.Weight","Shell.Weight")]
head(input)

model <- lm(Rings~Whole.Weight+Height+Shucked.Weight+Viscera.Weight+Shell.Weight,data=input)
print(input)

XRings <- coef(model)[1]
print(XRings)

XwWeight <- coef(model)[2]
print(XwWeight)

XHeight <- coef(model)[3]
print(XHeight)

XSWeight <- coef(model)[4]
print(XSWeight)

XVweight <- coef(model)[5]
print(XVweight)

XShWeigh <- coef(model)[6]
print(XShWeigh)

# for Whole.Weight = 0.2255, Height = 0.090, Shucked.Weight = 0.0995, Viscera.Weight = 0.0485, 
# Shell.Weight =  0.070

Y1 = XRings+(XwWeight*0.2255)+(XHeight*0.090)+(XSWeight*0.0995)+(XVweight*0.0485)+(XShWeigh*0.070)
print(Y1)
#testing for other data
Y2 = XRings+(XwWeight*1.9485)+(XHeight*0.195)+(XSWeight*0.9455)+(XVweight*0.3765)+(XShWeigh*0.4950)
print(Y2)