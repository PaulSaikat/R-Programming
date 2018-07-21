####################################################
#                Read PIE chart                   #
##################################################

rm(list = ls())

dat<-read.csv('office.csv')

# Create data for the graph.
salary <- dat$salary
labels <- dat$name
# Plot the chart
pie(salary,labels)


# Plot the chart with title and rainbow color pallet.
pie(salary, labels, main = "Name & Salary", col = rainbow(length(salary)))


# Plot the chart.
piepercent<- round(100*salary/sum(salary), 1)
pie(salary, labels = piepercent, main = "Name & Salary",col = rainbow(length(salary)))
legend("topright", labels, cex = 0.8,fill = rainbow(length(salary)))
