####1. Construct and store a 4 x 2 matrix that’s filled row-wise with the values 4.3, 3.1, 8.2, 8.2, 3.2,
#    0.9, 1.6, and 6.5, in that order.

mat1<-matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow=4,ncol=2,byrow=TRUE)
print(mat1)

####2. Confirm the dimensions of the matrix from (1.) are 3 x 2 if you remove any one row.

mat1<-mat1[-2,]
print(dim(mat1))

####3. Overwrite the second column of the matrix from (1.) with that same column sorted from smallest
#   to largest.

vec1<-mat1[,2]
vec1<-sort(vec1)
mat1[,2]<-vec1
print(mat1)

####4. What does R return if you delete the fourth row and the first column from (3.)? Use matrix to
#   ensure the result is a single-column matrix, rather than a vector.

mat2<-matrix(mat1[-4,-1],3,1)
print(mat2)

####5. Store the bottom four elements of (3.) as a new 2 x 2 matrix.

mat2<-mat1[3:4,]
print(mat2)

####6. Overwrite, in this order, the elements of (3.) at positions (4;2), (1;2), (4;1), and (1;1) with -1/2
#   of the two values on the diagonal of (e).


mat1[c(4,1),c(2,1)]<-(-1/2)*diag(mat2)
print(mat1)



