# Q6. Create and store a vector that contains the following, in this order:
#         i. A sequence of length 5 from 3 to 6 (inclusive)
#         ii. A twofold repetition of the vector c(2,-5.1,-33)
#         iii. The value 7/42 + 2
Xi <- seq(from = 3 , to = 6 , length.out = 5)
Xii <- rep(x = c(2,-5.1,-33) , times = 3)
Xiii <- 7/42 + 2

Sol6 <- c(Xi , Xii , Xiii)
print(Sol6)

# Q7. Extract the first and last elements of your vector from (Q6.),
#     storing them as a new object.
Xiv <- Sol6[1]
Xv <- Sol6[length(Sol6)]
Sol7 <- c(Xiv , Xv)
print(Sol7)

# Q8. Store as a third object the values returned by omitting the first and 
#     last values of your vector from (Q6.).
Sol8 <- Sol6[ -c(1, length(Sol6))]
# print(Sol8)

# Q9. Use only (Q7.) and (Q8.) to reconstruct (Q6.).
c(Sol7 , Sol8) -> Sol6
print(Sol6)

# Q10. Overwrite (Q6.) with the same values sorted from smallest to largest.
Sol6 <- sort(Sol6)
print(Sol6)

# Q11. Use the colon operator as an index vector to reverse the order of (Q10.), 
#      and confirm this is identical to using sort on (Q10.) with decreasing=TRUE.
print(Sol6[length(Sol6) : 1] == sort(Sol6 , decreasing=TRUE ))
# For each iterative check it returned TRUE. 
# This means every value in the above two vectors in the print statement are same.

# Q12. Create a vector from (Q8.) that repeats the third element of (Q8.) three 
#       times, the sixth element four times, and the last element once.
Sol12 <- c(rep(x = Sol8[3] , times = 3) , rep(x = Sol8[6] , times = 4) , Sol8[length(Sol8)])
print(Sol12)
print(Sol8)

# Q13. Create a new vector as a copy of (Q10.) by assigning (Q10.) as is to a newly 
#       named object. Using this new copy of (Q10.), overwrite the first, the fifth to the 
#       seventh (inclusive), and the last element with the values 99 to 95 (inclusive), 
#       respectively.
Sol13 <- Sol6
Sol13[c(1 , 5:7 , length(Sol13))] <- 99:95
print(Sol13)
