# XLSX file reading - XLSX file can not be read using internal function. 
#package 'xlsx' has to be installed
install.packages('xlsx',dependencies = TRUE)
library('xlsx')
dat5<-read.xlsx('office.xlsx',sheetIndex = 1)

#----------------------
install.packages('XML',dependencies = TRUE)
install.packages('methods',dependencies = TRUE)
library('XML')
library('methods')
#give the input file name to the function
result<-xmlParse(file='office.xml')

#contvert xml to dataframe
dat2 <- xmlToDataFrame("office.xml")

#----------------------------------------------------------
#for reading URL... RCurl package is must
#dplyr is mostly used package in R. 'select' is present inside it.
install.packages('dplyr',dependencies = TRUE)
install.packages('RCurl',dependencies = TRUE)
library('dplyr')
library('RCurl')
url<-"https://raw.githubusercontent.com/genomicsclass/dagdata/master/inst/extdata/msleep_ggplot2.csv"
x<-getURL(url)
msleep<-read.csv(textConnection(x))  #have to use textConnection if reading file from web
head(msleep)

#slice out only the required column
sleepData <- select(msleep,name,sleep_total) # only two column
msleep1 <- subset(msleep,sleep_total >= 16) #who sleeps >= 16 hours
#or
msleep1 <- filter(msleep,sleep_total >= 16, bodywt >= 1) #also bodywt is 1

msleep2 <- select(msleep,-name) #remove name column
msleep3 <- select(msleep,name:order) #indexing for name to order colomn based on dplyr package
msleep4 <- select(msleep,starts_with("sl")) #colomn start with "sl"
msleep5 <- filter(msleep,order %in% c("Perissodactyla","Primates")) #matches values on column
#---------------------------------------------------------

install.packages('magrittr',dependencies = TRUE)
library('magrittr')
library('dplyr')
head(select(msleep, name, sleep_total))
#pipe operator equal to this
msleep %>% select(name, sleep_total) %>% head

#to arrange (or re-order) rows by a particular column such as taxnimocal order
msleep %>% arrange(order) %>% head #alphabetical order

msleep %>% arrange(name) %>% head

msleep %>%
   select(name, order, sleep_total) %>%
  arrange(order, sleep_total) %>%
  filter(sleep_total >=16)

msleep %>%
  select(name, order, sleep_total) %>%
  arrange(order, desc(sleep_total)) %>%    #decending order of sleep_total
  filter(sleep_total >=16)

#creating new column using mutate()
#rem_prportion whihc is the ratio  of rem sleep to total amount of sleep
msleep %>%
  mutate(rem_proportion = sleep_rem / sleep_total) %>%
  head

#add 2nd column
msleep %>%
  mutate(rem_proprotion = sleep_rem / sleep_total, bodywt_grams = bodywt * 1000) %>%
  head

msleep %>%
  summarise(avg_sleep = mean(sleep_total))

msleep %>%
  summarise(avg_sleep = mean(sleep_total),
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total=n()) # total record size

#if we want to store the data, must remove piping and head
dat6 <-msleep %>% mutate(rem_proportion = sleep_rem / sleep_total)
