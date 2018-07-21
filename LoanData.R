####################################################
#                Loan data                        #
##################################################

rm(list=ls())
dat<-read.csv('LoanData.csv', header = TRUE)

#Check for the NA value
any(is.na(dat))

#Calculating debit to income ratio
Debit_to_Income = (dat$funded_amnt / dat$annual_inc ) * 100