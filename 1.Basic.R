#to print a sting
print ("hello world")

#add numbers
print(2.34 + 5.6)

#variable declaration
myString <- "Hi I am Saikat"
print (myString)

#----------------------------------------------------------
#Multiline 
if(FALSE) {
  "This is a demo for multi-line comments and it should be put inside either a single
  OR double quote"
}
myString <- "Hello, World!"
print ( myString)
#----------------------------------------------------------

#assign value
a = 10
b <- 20
assign("x",100)

a 
b 
x
#----------------------------------------------------------

#multiple assignments

d <- c <- b
c 
d


#----------------------------------------------------------

#testing

a + b
y <- (x-a)
y

#----------------------------------------------------------

#removing assignment

rm(a)
a

#----------------------------------------------------------

#date function
date1 = as.Date("2018-01-20")
class(date1)

#----------------------------------------------------------

# Loop

x = 0
for (x in 1:10){
  x+1
  print(paste("Hi",x))
}
