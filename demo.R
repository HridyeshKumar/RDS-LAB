x<-25L
if(is.integer(x)){
  print("x is an integer number")
}else{
  print("x is not an integer number")
}


y<-c("Hardwork","is","the","key","of","success")
y
if("key" %in% y){
  print("key is found in our vector")
}else{
  print("key is not found in our vector")
}

marks<-34
if(marks>75){
  print("First Class")
}else if(marks>65){
  print("Second Class")
}else if(marks>45){
  print("Third Class")
}else{
  print("Fail")
}

#switch(expression,case1,case2,...)
x<-switch(3,"Ram","Shyam","Mohan","Sumit")
print(x)
x<-switch(7,"Ram","Shyam","Mohan","Sumit")
print(x)
y<-"20"
x<-switch(y,
          "4"="Ram",
          "14"="Shyam",
          "20"="Mohan",
          "25"="Sumit"
          )
print(x)

#next
x<-1:10
for(val in x){
  if(val==5){
    next
  }
  print(val)
}

#break
a<-1
repeat{
  print("Hello R")
  if(a>5)
    break
  a<-a+1
}

#for loop
for (y in 1:10) {
  print(paste("Number:",y))
}

f<-c("Orange","Apple","Banana","Grapes","Mango")
for (i in f) {
  print(f)
}

#repeat loop
v<-c("Hello,","How","are","you?")
x<-2
repeat{
  print(v)
  x<-x+1
  if(x>5){
    break
  }
}

#while loop
v<-c("Hello","R","programming","language")
x<-2
while(x<6){
  print(v)
  x<-x+1
}

