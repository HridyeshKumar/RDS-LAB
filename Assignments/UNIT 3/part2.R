#6. Write R code that calculates the sum of all TRUE values in a given logical vector (using their numeric property
# where TRUE = 1 and FALSE = 0).

logical_vector <- c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE)
count <- sum(logical_vector)
print(paste("Number of TRUE values:", count))

#7. Given a numeric vector, write R code to extract all elements that are greater than 10 using logical subsetting.

numeric_vector <- c(5, 12, 8, 15, 3, 20, 10, 25)
greater_than_10 <- numeric_vector[numeric_vector > 10]
print("Elements greater than 10:")
print(greater_than_10)

#8. For the string "Hello World! Welcome to R programming", write R code to count the number of characters (using
# nchar()) and extract the substring "R programming".

text <- "Hello World! Welcome to R programming"
char_count <- nchar(text)
substring_text <- substr(text, start = 25, stop = nchar(text))
print(paste("Number of characters:", char_count))
print(paste("Extracted substring:", substring_text))

#9. Write R code that concatenates the strings "Data", "Science", and "R" into a single string with hyphens (-) as
# separators.

str1 <- "Data"
str2 <- "Science"
str3 <- "R"
concatenated_string <- paste(str1, str2, str3, sep = "-")
print(concatenated_string)

#10. Write an R script that demonstrates the difference between cat() and paste() by printing the same set of words
# using both functions with a custom separator.

word1 <- "R"
word2 <- "is"
word3 <- "awesome"
# Using paste() - Returns a string
pasted_string <- paste(word1, word2, word3, sep = " | ")
print("Using paste():")
print(pasted_string)  # Output is a single string with separators
# Using cat() - Prints directly to the console
print("Using cat():")
cat(word1, word2, word3, sep = " | ")  # Prints without quotes and newlines
