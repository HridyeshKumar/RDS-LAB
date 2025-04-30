#6. Access a named element of a list using the $ operator.
my_list$text

#7. Create a simple data frame with two columns: Name and Age.
df <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 30))

#8. Access the age of the second person in a data frame.
df$Age[2]

#9. Find the number of rows in a given data frame.
nrow(df)

#10. Add a new row to an existing data frame.
df <- rbind(df, data.frame(Name = "Charlie", Age = 28))
