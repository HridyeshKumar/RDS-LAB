#2.Extract and store as a new object the fourth- and first-row elements, in that order, of 
#the second column only of all layers of (1).
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")
x<-array(seq(4.8,0.1,length.out=4*2*6),dim=c(4,2,6),dimnames=list(r_name,c_name,m_name))
y<-matrix(c(x[4,2,],x[1,2,]),nrow=6,ncol=2)
