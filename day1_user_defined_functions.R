rm(list=ls())
my_sq<-function(a) {
  for (i in 1:a){
    b<-i^2
    print(b)
  }
}
my_sq(5)

#calling the function without argument
my_sq<-function() {
  for (i in 1:3){
    b<-i^2
    print(b)
  }
}
my_sq()

# Create a function with arguments.
new.function <- function(a,b,c) {
  result <- a * b + c
  print(result)
}

# Call the function by position of arguments.
new.function(5,3,11)

# Call the function by names of the arguments.
new.function(a = 11, b = 5, c = 3)

# Create a function with default arguments.
new.function <- function(a = 3, b = 6) {
  result <- a * b
  print(result)
}

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

# Create a function with arguments.
new.function <- function(a, b=5) {
  print(a^2)
  print(a)
  print(b)
}

# Evaluate the function without supplying one of the arguments.
new.function(6)