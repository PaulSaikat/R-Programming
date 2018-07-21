####################################################
#                Read JSON file                   #
##################################################

rm(list = ls())

library('rjson')

# Give the input file name to the function.
result <- fromJSON(file="office.json")

# Print the result.
print(result)

# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

print(json_data_frame)
