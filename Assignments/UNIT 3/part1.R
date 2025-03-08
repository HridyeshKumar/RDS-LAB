#1. Write an R script to create a logical vector of length 12 that alternates between TRUE and FALSE.
logical<-rep(c(TRUE,FALSE),length.out=12)
print(logical)

#2. Write a R script that takes a numeric vector as input and returns a logical vector indicating which elements are
negative.
numeric_vec<-c(5,-3,0,-7,8,-1)
logical_vec<-numeric_vec < 0
print(logical_vec)

#3. Given two numeric vectors of equal length, write R code to check if they are element-wise equal and then output
the indices where they differ using the which() function.
vector1 <- c(2, 5, 8, 10, 3, 7)
vector2 <- c(2, 6, 8, 12, 3, 9)
equal_elements <- vector1 == vector2
different_indices <- which(!equal_elements)
print(equal_elements)     
print(different_indices)  

4. Create a 3×4 matrix from a given logical vector and display the result. Then, create another 3×4 numeric matrix
and perform an element-wise comparison between them.
logical_vector <- rep(c(TRUE, FALSE, TRUE, FALSE), length.out = 12)
logical_matrix <- matrix(logical_vector, nrow = 3, ncol = 4, byrow = TRUE)
# Define a logical vector of length 12
logical_vector <- rep(c(TRUE, FALSE, TRUE, FALSE), length.out = 12)
print("Logical Matrix:")
print(logical_matrix)
numeric_matrix <- matrix(c(1, 0, 1, 0, 1, 2, 3, 4, 0, 1, 0, 1), nrow = 3, ncol = 4, byrow = TRUE)
print("Numeric Matrix:")
print(numeric_matrix)
comparison_vector <- logical_matrix == numeric_matrix
print("Element-wise Comparison (Logical == Numeric):")
print(comparison_vector)

#5. Demonstrate vector recycling by creating one vector of length 4 and another of length 10, then perform an addition
operation. Print the resulting vector.
vector1 <- c(1, 2, 3, 4)
vector2 <- c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
result_vector <- vector1 + vector2
print("Resulting Vector:")
print(result_vector)
