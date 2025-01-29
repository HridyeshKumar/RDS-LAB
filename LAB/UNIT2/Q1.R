                                                    #Unit 2
#1.Create and store a three-dimensional array with six layers of a 4X2 matrix, filled with a decreasing 
#sequence of values between 4.8 and 0.1 of the appropriate length.
r_name<-c("r1","r2","r3","r4")
c_name<-c("c1","c2")
m_name<-c("m1","m2","m3","m4","m5","m6")
x<-array(seq(4.8,0.1,length.out=4*2*6),dim=c(4,2,6),dimnames=list(r_name,c_name,m_name))
