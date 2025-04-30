#16. Demonstrate the difference between single bracket [ ] slicing and double bracket [[ ]]
#    referencing with a suitable example.
example_list <- list(a = 1, b = 2)
example_list["a"]
example_list[["a"]]

#17. How would you extract multiple rows and columns simultaneously from a data frame?
df[1:2, c("Name", "Age")]

#18. Add a new column using the cbind() function to a data frame.
new_col <- c("F", "M", "M")
df <- cbind(df, Gender = new_col)

#19. How do you subset a data frame to exclude a particular column?
df_subset <- df[ , !(names(df) %in% "Age")]

#20. Extract all rows from a data frame where a character column has a specific value.
subset(df, Name == "Alice")
