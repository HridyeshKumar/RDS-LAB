#11. Create a nested list where one element is itself a list containing a numeric vector and a
#    character vector.
nested_list <- list(inner = list(nums = c(1, 2, 3), chars = c("a", "b", "c")))

#12. Extract the second element from the nested list created above.
nested_list$inner[[2]]

#13. Write code to convert a character column in a data frame to a factor.
df$Name <- as.factor(df$Name)

#14. Create a logical subset of a data frame to include only rows where age > 20.
subset(df, Age > 20)

#15. Add a new column to a data frame representing the age in months.
df$AgeInMonths <- df$Age * 12
