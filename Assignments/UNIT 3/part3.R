#11. Given the string "apple, apple, and apple", write R code that uses sub() to replace only the first occurrence of
# "apple" with "orange", and gsub() to replace all occurrences.

text <- "apple, apple, and apple"
# Replace only the first occurrence using sub()
sub_result <- sub("apple", "orange", text)
# Replace all occurrences using gsub()
gsub_result <- gsub("apple", "orange", text)
print(paste("Using sub():", sub_result))  
print(paste("Using gsub():", gsub_result))

#12. Convert the character vector c("male", "female", "male", "female") into a factor. Display the factor and its levels.

gender_vector <- c("male", "female", "male", "female")
gender_factor <- factor(gender_vector)
print("Factor Representation:")
print(gender_factor)
print("Levels of the Factor:")
print(levels(gender_factor))

#13. Create a factor from the vector c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov") and order the factor to reflect
# the natural calendar order (January to December). Display the ordered factor.

# Define the vector with unordered months
months_vector <- c("Jan", "Mar", "Feb", "Apr", "May", "Dec", "Nov")
# Define the correct calendar order
month_levels <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
# Convert to an ordered factor
ordered_months <- factor(months_vector, levels = month_levels, ordered = TRUE)
print("Ordered Factor:")
print(ordered_months)

#14. Given a factor vector of genders (e.g., gender <- factor(c("male", "female", "female", "male", "female"))), write R
# code to extract only the entries corresponding to "female".

gender <- factor(c("male", "female", "female", "male", "female"))
female_entries <- gender[gender == "female"]
print("Entries corresponding to 'female':")
print(female_entries)

#15. Write a function that takes a numeric vector and bins the data into three categories: "Low", "Medium", and "High".
# Use the cut() function and return the resulting factor.

numeric_vector <- c(10, 25, 30, 50, 60, 80, 100)
bins= c(10,40,70,100)
categories <- cut(numeric_vector, breaks = bins, labels = c("Low", "Medium", "High"), include.lowest = TRUE)
print("Binned Categories:")
print(categories)
