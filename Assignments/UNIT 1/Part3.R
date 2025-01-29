# Q14. Convert the vector c(2,0.5,1,2,0.5,1,2,0.5,1) to a vector of only 1s, using a 
#       vector of length 3.
Vec1 <- c(2,0.5,1,2,0.5,1,2,0.5,1)
Vec2 <- c(2,0.5,1)
Vec3 <- as.integer(Vec1 == Vec2)
print(Vec3)

# Q15. The conversion from a temperature measurement in degrees Fahrenheit(F) to
#       Celsius(C) is performed using the following equation:  C = 5/9 (F - 32) 
#       Use vector-oriented behavior in R to convert the temperatures 45, 77, 20, 19,
#       101,120, and 212 in degrees Fahrenheit to degrees Celsius.
Feh <- c(45, 77, 20, 19, 101, 120, 212)
Cel <- c(5/9*(Feh - 32))
print(Cel)

# Q16. Use the vector c(2,4,6) and the vector c(1,2) in conjunction with rep and
#       * to produce the vector c(2,4,6,4,8,12).
V1 <- c(2,4,6)
V2 <- rep(x = c(1,2), each = 3)
Sol16 <- V1 * V2
print(Sol16) 

# Q17. Overwrite the middle four elements of the resulting vector from (Q16.) with 
#       the two recycled values -0.1 and -100, in that order.
Sol16[2:(length(Sol16)-1)] <- rep(x = c(-0.1 , -100) , times = 2)
print(Sol16)
