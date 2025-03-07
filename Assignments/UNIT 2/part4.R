####21. Calculate the below operation.
# 3 ([
#  2 5
#  3 7
#] − [
#  5 10
# 15 20])

print(3*(matrix(c(2,3,5,7),2,2)-matrix(c(5,15,10,20),2,2)))


####22. Store these two matrices:

#  A = [
#    1 2
#    3 4
#  ], and B = [
#    5
#    6
#  ]

# which of the following multiplications are valid? For valid cases, compute the results.
#  i. C . D
# ii. CT. D
# iii. DT. (C . CT)

A<-matrix(1:4,2,2,T)
B<-matrix(5:6,2,1)

#i
print(A%*%B)  #possible becz col(A)=row(B)

#ii
print(t(A)%*%B)  #possible becz col(t(A)=row(B)

#iii
print(t(B)%*%A%*%t(A)) #possible becz col(t(B)=row(A%*%t(A))


####23. For

#B = [
#  1 0 0
#  0 2 0
# 0 0 −2
#]

#confirm that B-1. B – I3 provides a 3 x 3 matrix of zeros.

B<-diag(c(1,3,-2))
print(solve(B)%*%B - diag(3))


####24. Construct a three-dimensional array with four layers, each a 3 x 3 matrix filled with random
#    numbers between 1 and 9. Then, extract the elements of the first row of the third column across all
#    layers and store them as a new vector.

x4<-array(c(1,3,2,5,4,6,8,7,9),dim = c(3,3,4))
print(x4)

x5<-x4[1,3,]
print(x5)
