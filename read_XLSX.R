####################################################
#                Read CSV file                    #
##################################################

rm(list=ls())

#install.packages('xlsx',dependencies = TRUE)

library('xlsx')

dat5<-read.xlsx('office.xlsx',sheetIndex=1)

print(dat5)

