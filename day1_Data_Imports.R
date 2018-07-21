rm(list=ls())
dat<-read.csv('office.csv')
dat1<-subset(dat,salary==max(salary))
#get all the people working in IT dept
dat2<-subset(dat,dept=='IT')
print(dat2)
#get all the people working in IT dept and saleary > 600
dat3<-subset(dat,salary>600 & dept=='IT')
print(dat3)
#get the people who joined on or after 2014
dat4<-subset(dat,as.Date(start_date)>as.Date("2014-01-01"))
print(dat4)



install.packages('xlsx',dependencies = TRUE)
library('xlsx')
dat5<-read.xlsx('office.xlsx',sheetIndex=1)
print(dat5)


library('XML')
library('methods')
# Give the input file name to the function.
result<-xmlParse(file="office.xml")

# Print the result.
print(result)

# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)


# Convert the input xml file to a data frame.
dat <-xmlToDataFrame("office.xml")

library('rjson')
# Give the input file name to the function.
result <- fromJSON(file="office.json")

# Print the result.
print(result)
# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

#library('RCurl')
library('stringr')
library('plyr')

# Read the URL.
url <- "http://www.geos.ed.ac.uk/~weather/jcmb_ws/"

# Gather the html links present in the webpage.
links <- getHTMLLinks(url)

# Identify only the links which point to the JCMB 2015 files. 
filenames <- links[str_detect(links, "JCMB_2015")]

# Store the file names as a list.
filenames_list <- as.list(filenames)

# Create a function to download the files by passing the URL and filename list.
downloadcsv <- function (mainurl,filename) {
  filedetails <- str_c(mainurl,filename)
  download.file(filedetails,filename)
}

# Now apply the l_ply function and save the files into the current R working directory.
l_ply(filenames,downloadcsv,mainurl = "http://www.geos.ed.ac.uk/~weather/jcmb_ws/")
library('RMySQL')

# Create a connection Object to MySQL database.
# We will connect to the sampel database named "sakila" that comes with MySql installation.
mysqlconnection = dbConnect(MySQL(), user = 'root', password = '', dbname = 'sakila',host = 'localhost')

# List the tables available in this database.
dbListTables(mysqlconnection)

# Query the "actor" tables to get all the rows.
result = dbSendQuery(mysqlconnection, "select * from actor")

# Store the result in a R data frame object. n = 5 is used to fetch first 5 rows.
data.frame = fetch(result, n = 5)
print(data.fame)

result = dbSendQuery(mysqlconnection, "select * from actor where last_name = 'TORN'")

# Fetch all the records(with n = -1) and store it as a data frame.
data.frame = fetch(result, n = -1)
print(data)

dbSendQuery(mysqlconnection, "update mtcars set disp = 168.5 where hp = 110")
#inserting data into table
dbSendQuery(mysqlconnection,
            "insert into mtcars(row_names, mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb)
            values('New Mazda RX4 Wag', 21, 6, 168.5, 110, 3.9, 2.875, 17.02, 0, 1, 4, 4)"
)


# Use the R data frame "mtcars" to create the table in MySql.
# All the rows of mtcars are taken into MySql.
dbWriteTable(mysqlconnection, "mtcars", mtcars[, ], overwrite = TRUE)

#dropping tables

dbSendQuery(mysqlconnection, 'drop table if exists mtcars')
