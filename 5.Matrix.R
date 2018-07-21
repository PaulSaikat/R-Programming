#A matrix is a two-dimensional rectangular data set. 
#It can be created using a vector input to the matrix function.

# Create a matrix.
M = matrix( c('1','2','3','4','5','6'), nrow = 2, ncol = 3, byrow = TRUE)
print("By ROW True")
print(M)


N = matrix( c('1','2','3','4','5','6'), nrow = 2, ncol = 3, byrow = FALSE)
print("By ROW False")
print(N)
