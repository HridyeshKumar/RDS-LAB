####15. Construct a 5 x 3 matrix filled column-wise with a sequence of numbers from 1 to 15. Verify
#    the matrix is correctly populated.

x<-matrix(1:15,5,3)
print(x==1:15)


####16. If you add a new row to the matrix created in question (15.), confirm its new dimensions.
x<-matrix(1:15,5,3)
x1<-rbind(x,1:3)
print(dim(x1))


####17. Sort the first column of the matrix from question (15.) in descending order. Keep other columns
#    unchanged.x<-matrix(1:15,5,3)
x[,1]<-sort(x[,1],TRUE)
print(x)


####18. What would the result be if you remove the second row and the third column from the sorted
#    matrix in question (17.)? Ensure the result remains a matrix.

x2<-x[-2,-3]
print(x2)
print(class(x2))


####19. From the matrix in question (17.), create a new 2 x 2 matrix using the top four elements of the
#    last column.
x[,1]<-sort(x[,1],TRUE)
x3<-matrix(x[1:4,3],2,2)
print(x3)

####20->Replace the elements at positions(2,1),(2,3),(5,1) and (5,3) in the matrix from(17) with the aaverage of four corner elements of the matrix
x[c(2,5),c(1,3)]<-x[1,1]+x[1,3]+x[5,1]+x[5,3]/4