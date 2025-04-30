#21. Write a function to merge two lists into one nested list without losing the original list
#    structure.
merge_lists <- function(list1, list2) {
  list(First = list1, Second = list2)
}

#22. Create a data frame that recycles shorter vectors. Demonstrate and explain the behavior.
df <- data.frame(Name = c("A", "B"), Age = c(20, 25, 30, 35)) 

#23. Write R code to create a data frame from a list containing multiple vectors of unequal
#    length, ensuring no data recycling occurs.
library(tibble)
my_list <- list(Name = c("A", "B"), Age = c(25, 30, 35))
df <- tibble::as_tibble(my_list)

#24. Create a list containing a matrix, a logical vector, and a string. Then, extract the second
#    element of the logical vector.
mylist <- list(matrix(1:4, nrow=2), c(TRUE, FALSE, TRUE), "hello")
mylist[[2]][2]

#25. Write R code that dynamically adds named elements to an existing list based on user input.
add_to_list <- function(lst, name, value) {
  lst[[name]] <- value
  return(lst)
}
