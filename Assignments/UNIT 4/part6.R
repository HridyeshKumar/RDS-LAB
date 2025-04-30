#26. Create a function that accepts a data frame and returns a subset with only numeric columns.
get_numeric_columns <- function(df) {
  df[sapply(df, is.numeric)]
}

#27. Create a data frame and write code to reorder its columns alphabetically by column names.
df <- df[ , order(names(df))]

#28. Demonstrate how to subset a nested list to extract a deeply nested numeric value.
deep_list <- list(a = list(b = list(c = 5)))
deep_list$a$b$c

#29. Write a function that takes a data frame as input and adds a factor-type column derived
#    from an existing numeric column.
add_factor_column <- function(df, num_col) {
  df$new_factor <- as.factor(df[[num_col]])
  return(df)
}

#30. Using logical vectors, subset a data frame to extract rows based on multiple conditions
#    across different columns.
subset(df, Age > 25 & Gender == "M")
