#3.Use a fourfold repetition of the second row of the matrix formed in (2) to fill
#a new array of dimensions 2X2X2
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")
x<-array(seq(4.8,0.1,length.out=4*2*6),dim=c(4,2,6),dimnames=list(r_name,c_name,m_name))
y<-matrix(c(x[4,2,],x[1,2,]),nrow=6,ncol=2)
z<-array(rep(c(y[2,]),times=4),dim=c(2,2,2))
