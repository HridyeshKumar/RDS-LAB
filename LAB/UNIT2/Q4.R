#4.Create a new array comprised of the results of deleting the sixth layer of (1).
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")
x<-array(seq(4.8,0.1,length.out=4*2*6),dim=c(4,2,6),dimnames=list(r_name,c_name,m_name))
new<-x[,,-6]
