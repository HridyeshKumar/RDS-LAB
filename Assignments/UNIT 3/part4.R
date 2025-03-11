#16. Create a logical vector and demonstrate the use of the any() and all() functions. Explain, via comments, a scenario
# where any() returns TRUE but all() returns FALSE.

logical_vector <- c(FALSE, TRUE, FALSE, FALSE, TRUE)
# Use any() to check if at least one element is TRUE
any_result <- any(logical_vector)
# Use all() to check if all elements are TRUE
all_result <- all(logical_vector)
print(paste("any() result:", any_result)) 
print(paste("all() result:", all_result)) 

# Explanation scenario:
# In logical_vector: (FALSE, TRUE, FALSE, FALSE, TRUE)
# - any(logical_vector) returns TRUE because at least one element is TRUE.
# - all(logical_vector) returns FALSE because not all elements are TRUE.

#17. Given two logical vectors, write R code to perform element-wise logical AND, OR, and NOT operations. Print the
# results.

logical_vector1 <- c(TRUE, FALSE, TRUE, FALSE)
logical_vector2 <- c(FALSE, FALSE, TRUE, TRUE)
# Element-wise logical AND
and_result <- logical_vector1 & logical_vector2
# Element-wise logical OR
or_result <- logical_vector1 | logical_vector2
# Element-wise logical NOT
not_result1 <- !logical_vector1
not_result2 <- !logical_vector2
print("Logical AND result:")
print(and_result)
print("Logical OR result:")
print(or_result)
print("Logical NOT result on first vector:")
print(not_result1)
print("Logical NOT result on second vector:")
print(not_result2)

#18. Given a numeric vector, write R code to create a new vector where all values less than the mean of the vector are
# replaced with NA.

numeric_vector <- c(10, 25, 30, 50, 60, 80, 100)
vector_mean <- mean(numeric_vector)
# Replace values less than the mean with NA
modified_vector <- numeric_vector < vector_mean
modified_vector
numeric_vector[modified_vector==TRUE]<-NA
print("Modified Numeric Vector:")
print(numeric_vector)

#19. Write an R script to compare two strings alphabetically using relational operators. Explain via comments how R
# determines the order (considering case sensitivity).

string1 <- "Apple"
string2 <- "banana"
# Compare alphabetically
print(paste("Is string1 < string2?", string1 < string2))   # TRUE if "Apple" comes before "banana"
print(paste("Is string1 > string2?", string1 > string2))   # TRUE if "Apple" comes after "banana"
print(paste("Are the strings equal?", string1 == string2)) # TRUE if both are exactly the same
# Explanation:
# R refers the order : a<A<b<B<c<C<d<D<e<E<......

#20. Write an R script that creates a string containing a newline, tab, and a backslash using escape sequences. Print the
# string to the console using cat().

# Define a string with escape sequences
text <- "First Line\n\tTabbed Line\nBackslash: \\"
# Print the string using cat() to interpret escape sequences
cat(text)
