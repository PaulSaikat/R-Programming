####################################################
#                Read URL                         #
##################################################

rm(list = ls())

library('dplyr')
library('RCurl')
#url <-"https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/datasets.csv"
url <- "https://raw.githubusercontent.com/vincentarelbundock/Rdatasets/master/csv/ggplot2/msleep.csv"
x <- getURL(url)
msleep <- read.csv(textConnection(x))

head(msleep)

