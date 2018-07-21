####################################################
#                     Bar chart                   #
##################################################

rm(list = ls())

dat<-read.csv('office.csv')

# Create data for the graph.
Emp_salary <- dat$salary
Emp_name <- dat$name
Emp_start_date <- dat$start_date

# Plot the bar chart 
barplot(Emp_salary,names.arg=Emp_name, xlab = 'Name', ylab = 'Salary',col='red')

