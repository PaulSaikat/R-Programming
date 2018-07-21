rm(list = ls())
#loading data
data("mtcars")
x<-mtcars
colnames(x)
head(x)
tail(x)


#------------------------------------------------------------------

#df1<-data.frame(cust_id=c(1,2,3,4,5,6),prod=c("Toaster","Toaster","Toaster","Kettle","Kettle","Kettle"))
#df2<-data.frame(cust_id=c(2,4,6),state=c("karnataka","tamilnadu","karnataka"))
           
df1<-data.frame(cust_id=c(1,2,3,4,5,6),prod=c(rep("Toaster",3),rep("Kettle",3)))
df2<-data.frame(cust_id=c(2,4,6),state=c(rep("karnataka",2),rep("tamilnadu",1)))
merge(df1,df2,by="cust_id") #inner merge
merge(df1,df2,by="cust_id",all=TRUE) #Outer merge (union)
merge(df1,df2,by=NULL) #cross join
