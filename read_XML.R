####################################################
#                Read CSV file                    #
##################################################

rm(list = ls())

#install.packages('XML',dependencies = TRUE)
#install.packages('methods',dependencies = TRUE)


library('XML')
library('methods')

# Give the input file name to the function.
result <- xmlParse(file = "office.xml")

# Print the result.
print(result)


# Exract the root node form the xml file.
rootnode <- xmlRoot(result)

# Find number of nodes in the root.
rootsize <- xmlSize(rootnode)

# Print the result.
print(rootsize)

# Convert the input xml file to a data frame.
dat <- xmlToDataFrame("office.xml")

print(dat)

