####7 Calculate the following:
# 2/7*
# ([
#   1 2
#   2 4
#   7 6
# ] − [
#   10 20
#   30 40
#   50 60
# ])

mat4<-matrix(c(1,2,7,2,4,6),3,2)
mat5<-matrix(seq(10,60,10),3,2,T)
print(mat4)

print((2/7)*(mat4-mat5))

####8. Store these two matrices:

#  A = [
#    1
#    2
#    7
#  ], and B = [
#    3
#    4
#    8
#  ]
#Which of the following multiplications are possible? For those that are, compute the result.
#i. A . B
#ii. AT. B
#iii. BT. (A . AT)
#iv. (A . AT) . BT
#v. [(B . BT) + (A . AT) - 100I3]

A<-matrix(c(1,2,7),3,1)
B<-matrix(c(3,4,8),3,1)


#i
#print(A%*%B) #Error in A %*% B : non-conformable arguments

#ii
print(t(A)%*%B)  #possible because col(t(A)) = row(B)

#iii
print(t(B)%*%(A%*%t(A))) #possible because col(t(B) = row((A%*%t(A)))

#iv
#print((A%*%t(A))%*%t(B)) #Error in (A %*% t(A)) %*% t(B) : non-conformable arguments

#v
print(solve(B%*%t(B) + A%*%t(A) - 100*diag(3)))



####9. For

#A = [
#  2 0 0 0
#  0 3 0 0
#  0 0 5 0
#  0 0 0 −1
#]

#confirm that A-1 . A - I4 provides a 4 x 4 matrix of zeros.

A<-diag(c(2,3,5,-1))
print(solve(A)%*%A-diag(4))


###10->Create 3d array which have 6 layer of 4x2 matrix, filled with  Decreasing sequence of values between 4.8 and 0.1 of the appropriate length.

r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")
x<-array(seq(4.8,0.1,length.out=4*2*6),dim = c(4,2,6),dimnames = list(r_name,c_name,m_name))
print(x)


####11->Extract and store as a new object the fourth and first row elements, in that order, of the second column only of all layers of (1).
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")

y<-matrix(c(x[4,2,],x[1,2,]),nrow = 2, ncol = 6 )
print(y)



####12. Use a fourfold repetition of the second row of the matrix formed in (11.) to fill a new array of
#dimensions 2 x 2 x 2 x 3.
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")

z<-array(rep(c(y[2,]),times=4),dim=c(2,2,2,3))
print(z)


####13->Create a new array comprised of the result of deleting the sixth layer of 1
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")

new_array<-x[,,-6]
print(new_array)


####14->Overwrite the second and fourth row elements of the sixth layers 1,3 and 5 of (4) with 99
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")

new_array[c(2,4),2,c(1,3,5)]=-99
print(new_array)


