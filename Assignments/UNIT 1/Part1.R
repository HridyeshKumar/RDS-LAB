# Q1. Create and store a sequence of values from 5 to -11 that progresses in steps of 0.3.
Sol1 <- seq(from = 5 , to = -11 , by = -0.3)
print(Sol1)

# Q2. Overwrite the object from (Q1.) using the same sequence with the order reversed.
Sol1 <- sort(x = Sol1)
print(Sol1)

# Q3. Repeat the vector c(-1,3,-5,7,-9) twice, with each element repeated 10 times,
#     and store the result. Display the result sorted from largest to smallest.
V1 <- c(-1,3,-5,7,-9)
Sol3 <- rep(x = V1 , each = 10 , times = 2 )
print(sort(result , decreasing = TRUE))

# Q4. Create and store a vector that contains, in any configuration, the following:
#       i. A sequence of integers from 6 to 12(inclusive)
#       ii. A threefold repetition of the values 5.3
#       iii. The number -3.
#       iv. A sequence of nine values starting at 102 and ending at the number that is 
#           the total length of the vector created in (Q3.)
Vi <- 6:12
Vii <- rep(x = 5.3 , times = 3)
Viii <- c(as.integer(x = -3))
Viv <- seq(from = 104 , to = length(Sol3) , length.out = 9)

Sol4 <- c(Vi , Vii , Viii , Viv)
print(Sol4)

# Q5. Confirm that the length of the vector created in (Q4.) is 20.
print(length(Sol4) == 20) #Return TRUE
