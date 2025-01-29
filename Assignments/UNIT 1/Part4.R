# Q18. Reversed Sequence Creation:
# Generate and store a sequence of values from 10 to -20 in steps of 0.5. 
# How can you reverse this sequence efficiently in R without recreating it manually?
Vect1 <- seq(from = 10 , to = -20 , by = -0.5)
print(sort(Vect1))
print(rev(Vect1))
# rev() function is the best way to reverse a sequence in R.

# 19. Vector Repetition and Order Sorting:
# For the vector c(-2, 4, -6, 8, -10), describe how to repeat the vector itself three times 
# and each of its elements 5 times. Following this, how would you sort the resulting vector 
# from smallest to largest?
Vect2 <- c(-2, 4, -6, 8, -10)
Sol19 <- rep(x = Vect2 , times = 3 , each = 5)
print(Sol19)

# To repeat the vector itself three times and each of its elements 5 times. We can use the 
# above method

# Q20. Composite Vector Construction:
# Assemble a vector that includes:
#   i. A sequence of integers from 15 to 25 (inclusive)
#   ii. A twofold repetition of the number 4.2
#   iii. The number -5
#   iv. A sequence of twelve values starting at 200 and ending at the number which is the 
#   total length of the vector created in question 2. How would you ensure all components 
#   are accurately combined?
Vecti <- 15:25
Vectii <- rep(x = 4.2 , times = 2)
Num <- as.integer(-5)
Vectiii <- seq(from = 200 , to = length(Sol1) , length.out = 12L)
Sol20 <- c(Vecti , Vectii , Num , Vectiii)
print(Sol20)
# To ensure all components are accurately combined we must prefer c() method to do the combination.

# Q21. Length Confirmation of a Complex Vector:
# After creating the complex vector described above, what function would you use to confirm its
# length is 25? What result from this function would indicate success?
Sol21 <- vector(mode = "complex" , length = 25L)
# The best way to find the length of a vector efficiently is by length() function.
# And to ensure the vector's length is 25 we must use comparison operator `==` like.
print( length(Sol21) == 25L)

# Q22. Diverse Vector Composition:
#  Detail the steps to compile a vector containing, in order:
#   i. A sequence of length 7 from 2 to 8 (inclusive)
#   ii. A threefold repetition of the vector c(3,-4.2,-50)
#   iii. The value 14/84 + 3
#  How do you maintain the specified order while combining these elements?
Step1 <- 2:8 # Best way to create a sequence of length 7 from 2 to 8 (inclusive).
Step2 <- rep(x = c(3,-4.2,-50) , times = 3)
Val <- as.numeric(14/84 + 3)
# To maintain the specified order while combining these elements we must use c() function.
Sol22 <- c(Step1 , Step2 , Val)
print(Sol22)

# Q23. Extraction and Reconstruction:
# Extract the first and third elements from the vector created in question 5, storing them in 
# a new object. How would you use this new object along with the original vector (minus its 
# first and third elements) to reconstruct the original sequence?
Vectorin2 <- sort(x = Sol1)
Obj1 <- c(Vectorin2[c(1,3)])
Obj2 <- c(Vectorin2[-c(1,3)])
Sol23 <- sort(x = c(Obj1 , Obj2))
print(Sol23) 

# Q24. Middle Element Replacement:
# From the resulting vector in question 5, replace the middle three elements with the 
# sequence - 0.5, -200, -0.5. What strategies in R allow for such precise element replacement?
Vectorin2[(length(Sol1)/2 - 1) : (length(Sol1)/2 + 1)] <- c(-0.5 , -200 , -0.5)
print(Vectorin2)

# Q25. Conditional Vector Transformation:
# Convert the vector c(3,1,2,3,1,2,3,1,2) into a vector of only 2s, using a vector of length 2. 
# Which vectorized operations in R would facilitate this conversion?
Vect2 <- c(c(3,1,2,3,1,2,3,1,2) != 2)
Vect2[c(3,6,9)] <- TRUE
Sol25 <- as.numeric(Vect2) * 2L
print(Sol25)

# Q26. Temperature Conversion Vectorized:
#  Convert the temperature readings 32, 68, 14, 0, 113, 104, and 198 degrees Fahrenheit to 
#  Celsius using the formula C = 5/9 * (F - 32). How can you apply this conversion in a 
#  vectorized manner in R?
Feh2 <- c(32, 68, 14, 0, 113, 104, 198)
Cel2 <- c(5/9 * (Feh2 - 32))
print(Cel2)
# The above way converts each values(degree Fahrenheit) into (degree Celsius) by itrating 
# over Feh2 vector which contains the temperature readings.

# Q27. Vector Multiplication and Element Replacement:
# Use the vector c(3,5,7) and the vector c(2,3) with the rep function and multiplication to 
# produce the vector c(6,15,21,9,15,21). How do you then replace the middle four elements with 
# two alternately repeated values of -1 and -150?
Vecto1 <- c(3,5,7)
Vecto2 <- rep(x = c(2,3) , each = 3)
Vecto3 <- Vecto2 * Vecto1
Vecto3[2:5]  <- rep( x = c(-1 , -150) , times = 2)
print(Vecto3)
