library('dplyr')
library('RCurl')
url <- "https://raw.githubusercontent.com/genomicsclass/dagdata/master
/inst/extdata/msleep_ggplot2.csv"
x<-getURL(url)
msleep <- read.csv(textConnection(x))
head(msleep)






sleepData <- select(msleep, name, sleep_total)
head(sleepData)




#To select all the columns except a specific column,
msleep2<-select(msleep, -name)
head(msleep2)





head(select(msleep, name:order)) #from name to order





head(select(msleep, starts_with("sl"))) #all col starts with sl



#selecting rows using filter()
filter(msleep, sleep_total >= 16)



filter(msleep, sleep_total >= 16, bodywt >= 1)


#Filter the rows for mammals in the Perissodactyla and Primates taxonomic order
filter(msleep, order %in% c("Perissodactyla", "Primates"))

library('magrittr')
head(select(msleep, name, sleep_total))
#pipe operator equal to this
msleep %>% select(name, sleep_total) %>% head

#To arrange (or re-order) rows by a particular column such as the taxonomic order,
msleep %>% arrange(order) %>% head   # alphabetical order

msleep %>% arrange(name) %>% head

msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order) %>% 
  head

msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, sleep_total) %>% 
  filter(sleep_total >= 16)

msleep %>% 
  select(name, order, sleep_total) %>%
  arrange(order, desc(sleep_total)) %>% 
  filter(sleep_total >= 16)

#creating new column using mutate()
#rem_proportion which is the ratio of rem sleep to total amount of sleep.
msleep %>% 
  mutate(rem_proportion = sleep_rem / sleep_total) %>%
  head

# we add a second column called bodywt_grams which is the bodywt column in grams.
dat5<-msleep %>% 
  mutate(rem_proportion = sleep_rem / sleep_total, 
         bodywt_grams = bodywt * 1000)

msleep %>% 
  summarise(avg_sleep = mean(sleep_total))

msleep %>% 
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total),
            max_sleep = max(sleep_total),
            total = n())

#usage of group_by()
msleep %>% 
  group_by(order) %>%
  summarise(avg_sleep = mean(sleep_total), 
            min_sleep = min(sleep_total), 
            max_sleep = max(sleep_total),
            total = n())


