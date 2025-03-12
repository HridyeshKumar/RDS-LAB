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
while(x<=6){
  print(v)
  x<-x+1
}
 
#Take Input from user
name<-readline(prompt="Enter your name:")
age<-readline(prompt="Enter your age:")
print(paste("Hello My name is:",name,"and my age is:",age))
paste("Hello","233","Ram",sep="_")#by default space
paste0("Hello","233","Ram")

#function
#fun_name<-function(argu1,argu2,...){}
new.function<-function(){
  for(i in 1:5){
    print(i^2)
  }
}
new.function()

new.function<-function(x,y,z){
  res<-x+y+z
  print(res)
}
new.function(y=4,x=5,6)

new.function<-function(x=10,y=20){
  res<-x*y
  print(res)
}
new.function(y=4,x=5)

#built-in functions
x<-5.6                       #mathematical
print(ceiling(x))
print(floor(x))
print(abs(x))
print(sqrt(x))
y<-c(1.5,5.6,8.6)
print(trunc(y))
z<-5
print(sin(z))
print(log(z))
print(exp(z))

a<-"12sa3dsaca45sda66789"     #string
substr(a,3,5)

s1<-"Hridyesh Kumar"
print(tolower(s1))
print(toupper(s1))

s2<-c('acd','bcbd','abcdbcbd')
pat<-'^abc'
print(grep(pat,s2))
?grep
a1<-c(0:10,40)                #statistical
s<-sum(a1)
print(s)

a1<-c(0:10,23,32,15)
s<-max(a1)
print(s)

#Data Structures
#1.Vectors
#2.Matrix
#3.Array
#4.List
#5.Dataframes
# elements of vectors are called components
# length() : no. of elements in vector 
# atomic vector and list are the two types of vectors
a<-c(3,4,5,1,5,7)
b<--3:5
sq<-seq(1,5,by=0.5)
sq<-seq(1,4,length.out=5)
sq

#numeric vector
numv<-c(12,3,52.6,23.45,89.145)
numv
class(numv)
intv<-c(5,6,1,8,9,7)
intv<-c(5L,6L,1L,8L,9L,7L)
intv<-as.integer(intv)
class(intv)

#character vector 
charv<-c(1,5,8,7,9)
charv<-as.character(charv)
class(charv)
charvv<-c("Ram","Shayam","Mohan","Sohan")
class(charvv)

#logical vector
a1<-c(1,2,3,4,5,6,7)
a1[c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,TRUE)]

#accessing elements of vector
#by indexing []
#indexing starts from 1 not 0
sq<-seq(1,3,length.out=5)
sq[3]

char_vec<-c("Ram"=12,"Shayam"=32,"Mohan"=31)
char_vec["Shayam"]

#vector operations
a1<-c(1,2,3,4,5,6,7)
a4<-c(5,6,7,8,1,2,4)
a1+a4
a1-a4
a1*a4
a1/a4

a2<-c("Ram","Shayam","Mohan","Sohan")
a3<-c(a1,a2)

a2<-c("Ram","Shayam","Mohan","Sohan")
a2[3]
a2[7]
a2[-2]
a2[2:4]
a2[c(2,2,3,1,4)]

#naming of vector: names()function
z<-c("Ram","Sohan","Mohan")
names(z)=c("y1","y2","y3")
z["y1"]

# Lists
vec<-c(8,9,4,7,6)
char_vec<-c("Ram","Shayam","Sohan","Mohan","Rohan")
logic_vec<-c(TRUE,FALSE,FALSE,TRUE,FALSE)
list1<-list(vec,char_vec,logic_vec)
list1

list2<-list("Ram","Sohan",c(1,2,3,4,5),TRUE,FALSE,52L,56.85)
list2

#naming of lists
list3<-list(c("Ram","Mohan","Sohan"),c(56,89,78),list("btech","bse","ba"))
names(list3)<-c("students","marks","courses")
list3

#accessing lists
print(list3[3])
print(list3["marks"])
print(list3$students)

#unlist() function converts the list into vector
list3<-list(5:9)
list4<-list(14:18)
v1<-unlist(list3)
v2<-unlist(list4)
res<-v1+v2
class(v1)
typeof(v1)
mer<-list(list3,list4)

#vector function
rep(c(2,3,4),times=4)
rep(c(1,4,8),each=2)
rep(c(0,8),time=c(3,4))
rep(1:4,length.out=9)

seq(from=3.5,to=1.5,by=-0.5)
seq(from=-2.7,to=1.5,length.out=10)

x<-1:10
any(x>5)
all(x>5)

#Arrays
#Arrays are the data objects which allow 
#us to store data in more than two dimensions.
array_name<-array(data = )
v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim=c(3,3,4))

col_name<-c("c1","c2","c3")
row_name<-c("r1","r2","r3")
mat_name<-c("mat1","mat2","mat3","mat4") 
v3<-array(c(v1,v2),dim=c(3,3,4),dimnames=list(row_name,col_name,mat_name))
print(v3[3,,2])
print(v3[,,2])

v1<-c(1,4,5)
v2<-c(10,20,30,40,50,60,70,80)
v3<-array(c(v1,v2),dim=c(3,3,2))
v4<-c(7,8,9)
v5<-c(9,20,5,40,7,60,70,7)
v6<-array(c(v4,v5),dim=c(3,3,2))
v7<-v3+v6

#Matrix
#matrix(data,nrow,ncol,byrow,dim_name)
mat<-matrix(c(2:17),nrow=4,byrow=TRUE)
mat<-matrix(c(2,5,6,8,7,4),nrow=3,ncol=2,byrow=FALSE)

x<-matrix(c(5:16),nrow = 4,byrow = TRUE)
y<-matrix(c(7:18),nrow = 4,byrow = FALSE)
x[1,1:ncol(x)]

row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3")
z<-matrix(c(7:18),nrow=4,byrow=TRUE,dimnames=list(row_name,col_name))
print(z[3,1])
print(z[4,3])
print(z[2,])
print(z[,2])
z[4,3]<-0
z[z==11]<-0

#cbind() and rbind() are used to add a columns and rows respectively
z
rbind(z,c(2,3,4))
cbind(z,c(8,5,2,0))
t(z)               #transpose

a1<-matrix(c(5:16),nrow=4,ncol=3) #bydefault column-wise

a1<-matrix(c(5:16),nrow=4,ncol=3,byrow=TRUE)
a2<-matrix(c(1:12),nrow=4,ncol=3,byrow=TRUE)
sum<-a1+a2
sub<-a1-a2
mul<-a1*a2
mul1<-a1%*%a2
div<-a1/a2

#Data Frame
#A data frame is an array, unlike an array,
#the data we store in the columns of the data frame can 
#be of various types.

#A data frame is a two-dimensional array-like structure or
#a table in which a column contains values of one variable,
#and rows contains one set of values from each column.
#A data frame is a special case of  the list in which each 
#component has equal length.

#creating a data frame
emp.data<-data.frame(
  employee_id=c(1:5),
  employee_name=c("Ram","Mohan","Sohan","Rohan","Hitesh"),
  sal=c(523.3,913.2,641.0,529.0,453.25),
  starting_date=as.Date(c("2012-01-01","2013-09-23","2014-10-13",
                          "2014-11-28","2015-03-27")),
  stringsAsFactors=FALSE
)

#Printing the data frame
print(emp.data)
str(emp.data)      #structure
f1<-data.frame(emp.data$employee_name,emp.data$sal)
f2<-emp.data[2,]
f2<-emp.data[3:5,]
f3<-emp.data[c(2,3),c(1,4)]
f3<-emp.data[c(2,3)]
x<-list(6,"Manish",420.45,"2014-05-08")
rbind(emp.data,x)
y<-c("Jodhpur","Jaipur","Ajmer","Bikaner","Kota")
cbind(emp.data,Address=y)
emp.data<-emp.data[-2,]
emp.data$starting_date<-NULL
emp.data
print(summary(emp.data))

#Factors
d<-c("North","West","East","North")
is.factor(d)
factor(d)
factor(d,levels=c("North","West","East","South"),labels=c("N","W","E","S"))
factor(d,levels=c("North","West","East","South"),exclude="North")

#gl(n-no. of labels,k-repetition of values,labels)
v1<-gl(3,2,labels=c("Ram","Mohan","Sohan"))
d<-c("North","West","East","North")
data<-factor(d)
data[c(2,4)]
data[-1]
data[2]<-"East"
is.factor()
is.ordered()
as.factor() #convert vector into factor
as.ordered()

#Data Importing- CSV files
#A comma separated values (CSV) files
getwd() #function to know the current Working Directory
setwd("C:\Users\hkuma\OneDrive\Documents\GitHub\R")
              #function to reset the current working directory
#sorting
v<-c(12,34,56,32,35,98,33,57,14,59,13,21)
sort(v)
sort(v,decreasing=T)
order(v)   #position of the elements
v[order(v)]
rank(v)     #indexing of the sorted vector
v[rank(v)]  

stores<-read.csv("stores.csv")
view(stores)
print(is.data.frame(stores))
print(ncol(stores))
print(nrow(stores))

stores1<-read.csv("C:\Users\hkuma\OneDrive\Documents\GitHub\R.csv")
stores2<-read.table(file="stores.csv",header=T,sep=",")

#some of the functions related to the dataframes
view(stores)
fix(stores)
str(stores)  #str(): shows the structure of the data frame
summary(stores)  #summary(): provide summary statistics on the columns of the data frames
names(stores) #all the variable names
nrow(stores) 
ncol(stores)
length(stores)
dim(stores) #dim(): shows the dimensions of the data frame by rows and columns
colnames(stores) #shows the name of each column in the data frame
head(stores) #shows the first 6 rows of the data frames
tail(stores) #shows the last 6 rows of the data frames
names(stores)
stores2<-stores[c(1:4,15,5:14)]
names(stores2)
stores2<-stores[c(1:10),c(1:4)]
stores2<-stores[c(1:10),]
view(stores2)

grep("StoreName",colnames(stores))
names(stores)
grep("Tenure",colnames(stores))

#Data Importing - CSV
# $ - dollar sign for accessing or mentioning the variable names
#created a new variable
d1<-stores$TotalSales
names(stores)
view(stores)
stores$totalCost=stores$Total_Customers*stores$AcqCostPercost+stores$operatingCost
view(stores)
view(stores$totalCost)

#Getting the maximum TotalSales from data frame
names(stores)
max_sal<-max(stores$TotalSales)
min_sal<-min(stores$TotalSales)
print(max_sal)
print(min_sal)

#Getting the details of the person who have maximum TotalSales
details<-subset(stores,TotalSales==max(TotalSales))
print(details)

#Getting the details of all the persons who are working in the Kolkata
names(stores)
details<-subset(stores,Location=="Kolkata")
print(details)

#Getting the details whose TotalSales is greater than 350 and working in the Kolkata
details<-subset(stores,Location=="Kolkata"&TotalSales>350)
print(details)

#Writing into a CSV file 
#R also allows us to write into the .csv file.
#For this purpose, R provides a write.csv() function.

#Excel file
#Installing the xlsx package
install.packages("xlsx")

#Verifying the package is installed
any(grep("xlsx",installed.packages()))

#Loading the library into R workspace
library("xlsx")

#Reading in excel file
read.xlsx(file_name,sheet_index)

#Reading the first worksheet in the file employee.xlsx
excel_data<-read.xlsx("emp_data.xlsx",sheetIndex=1)
print(excel_data)
view(excel_data)
getwd()
setwd("C:\Users\hkuma\OneDrive\Documents\GitHub\R")
names(excel_data)
dim(excel_data)
summary(excel_data)
View(excel_data)
names(excel_data)
max_profit<-max(excel_data$Profit)
min_profit<-min(excel_data$Profit)

details<-subset(stores,Location=="Kolkata")
print(details)
a<-subset(excel_data,Country=="France")
View(a)
write.xlsx

#Manipulate Data in R with dplyr package
test<-read.csv("demo_data.csv")
View(test)
head(test)
tail(test)

install.packages("dplyr")
library("dplyr")
#Important dplyr verbs to remember

#select()    select column
#filter()    filter rows
#arrange()   re-order or arrange rows
#mutate()    create new columns
#summarise() summarise values
#group_by()  allows for group operations in the "split-apply-combine" concept

names(test)
sleepData<-select(test,name,sleep_total)
head(sleepData)

#To select all the columns except a specific column.
#use the "-" (substraction) operator (also known as negative indexing)

test1<-select(test,-name)
head(selectr(test,-name))

#To select a range of columns by name, use the ":" (colon) operator

head(select(test,name:order))

#To select all columns that start with the character string "s1",
#use the function starts_with()

head(select(test,starts_with("sl")))

#Some additional to select columns based on a specific criteria:

#ends_with():select columns that end with a character string 
#contains():select columns that contains a character string
#matches():select columns that match a regular expression
#one_of():select columns names that are from a group of names

#Selecting rows using filter()
#Filter the rows for mammals that sleep a total of more than 16 hours.

names(test)
filter(test,sleep_total>=16)

#Filter the rows for mammals that sleep a total of more than 
#16 hours and have a body weight of greater than 1 kilogram.

filter(test,sleep_total>=16,bodywt>=1)

#Filter the rows for mammals in the Perissodactyla and Primates taxonomic order

filter(test,order %in% c("Perissodactyla","Primates"))
install.packages("magrittr")
library("magrittr")
test %>% select(name,sleep_total) %>% head

#Pipe operator: %>%
#dplyr imports this operator from another package (magrittr).
#This operator allows you to pipe the output from one function to 
#the input of another function. Instead of nesting functions
#(reading from the inside to th outside),
#the idea of piping is to read the functions from left to right.

select(test,name,sleep_total)
head(select(test,name,sleep_total))
test %>% select(name,sleep_total) %>% head
test %>% head %>% select(name,sleep_total)

#head %>%  select(name,sleep_total) %>% test :not valid syntax

#Arrange or re-order rows using arrange()
#To arrange (or re-order) rows by a particular column such as
#the taxonomic order, list the name of the column you want to
#arrange the rows by
test %>% arrange(name) %>% head

#Now, we will select three columns from test, arrange the 
#rows by the taxonomic order and then arrange the rows by sleep_total, 
#Finally show the head of the final data frame

test %>%
  select(name,order,sleep_total) %>%
  arrange(order,sleep_total) %>%
  head

#Same as above, except here we filter the rows for mammels that
#sleep for 16 or more hours instead of showing the head of the 
#final data frame

test%>%
  select(name,order,sleep_total)%>%
  arrange(order,sleep_total)%>%
  filter(sleep_total>=16)

#Create new columns using mutate()
#The mutate() function will add new columns to the data frame.
#Create a new column called rem_proportion which is the ratio of
#rem sleep to toal amount of sleep.

test<-test %>% mutate(rem_proportion=sleep_rem/sleep_total)%>% head
names(test)
view(test)

#Group By
#The group_by function is used to group data by one or more variables.

names(test)
t1<-group_by(test,name)
View(t1)
View(test)
or
test %>% group_by(name)

#Data Importing from Relational Database

#Using MySQL package
#dbGetQuery: sends the queries and fetches results as the data frame
#dbSendQuery: only sends the query and returns an object of class
#inheriting from "DBIResult", this object of class can be used to 
#fetch the required result.

#dbclearResult removes the result from cache memory.

#fetch returns few or all rows that were asked in query,
#The output of fetch function is a list.

#dbHasCompleted is used to check is all the rows are retrieved.

#dbReadTable and dbWriteTable functions are used to read and write
#the tables in database from an R data frame.

library("RMySQL")

con<-dbConnect(MySQL(),
               username="root",
               password="",
               host="localhost",
               port=3306,
               dbname="registration_form"
)

con<-dbConnect(MySQL(),
               username="root",
               dbname="registration_form"
)
dbListTables(con)
dbListFields(con,"details")

detail<-dbGetQuery(con,"select * from details")
view(detail)

rs<-dbSendQuery(con,"select * from details")
data<-fetch(rs,n=-1) #-1 means all rows
view(data)

#Data Visualization

#Data Visualization is an efficient technique for gaining insight
#about data through a visual medium. With the help of visualization
#techniques, a human can easilt obtain information about hidden 
#patterns in data that might be neglected.

#Pie Charts
#Pie Chart is a representation of values in the form of slices
#of a circle with different colors.
#The Pie charts are created with the help of pie() function,
#which takes positive numbers as vector input.

pie(X,Labels,Radius,Main,Col,Clockwise)
#Here, X is a vector that contains the numeric values used in the pie chart ,
#Labels are used to give the description to the slices.
#Radius describes the radius of the pie chart.
#Main describes the title of the chart.
#Col defines the color pallete.
#Clockwise is a logical value that indicates the clockwise or 
#anti-clockwise direction in which slices are drawn.

#Creating data for the graph.
x<-c(12,35,56,75)
labels<-c("India","UK","Japan","USA")
pie(x,labels)
pie(x,labels,main="Country Pie Chart",col=rainbow(length(x)))
colors<-c("blue","green","red","orange")
pie(x,labels,main="Country Pie Chart",col=colors)

#Slice percentage & Chart legend
legend(x,y=NULL,legend,fill, col,bg)
#Here, x and y are the coordinates to be used to position the legend.
#legend is the text of legend
#fill is the color to use for filling the boxes beside the legend text
#col defines the color of line and points besides the legend text.
#bg is the background color for the legend box.

legend("topright",c("India","UK","Japan","USA"),cex=0.8,
       fill=colors)

#3 Dimensional Pie Chart

#R provides a plotrix package whose pie3D() function is used to 
#create an attractive 3D pie chart. The parameters of pie3D() 
#function remain same as pie() function

library(plotrix)
x2<-c(20,65,15,50,45)
labels2<-c("India","America","Shri Lanka","Nepal","Bhutan")
pie3D(x2,labelslabels=labels2,explode=0.2,main="Country Pie Chart")

x1<-c(20,65,15,50,45)
labels1<-c("India","America","Shri Lanka","Nepal","Bhutan")
pie_percent<-round(100*x/sum(x),1)
pie3D(x1,labels1,main="Country Pie Chart",col=rainbow(length(x)))
legend("topright",c("India","America","Shri Lanka","Nepal","Bhutan"),cex=0.5,
       fill=rainbow(length(x1)))

#Bar Charts
#A bar chart is a pictorial representation in which numerical 
#values of varaibles are represented by length or height of lines
#or rectangles of equal width. A bar chart is used for summarizing 
#a set of categorical data. In bar chart, the data is shown through 
#rectangular bars having the length of the bar proportional to the 
#value of the variable.

barplot(h,x,y,main,names.arg,col)

#S.No  Parameter Description 
#1.    H: A vector or matrix which contains numeric values used in the bar chart.
#2.    xlab: A label for the x-axis.
#3.    ylab: A label for the y-axis.
#4.    main: A title for the bar chart.
#5.    names.arg: A vector of names that appear under each bar.
#6.    col: It is used to give colors to the bars in the graph.

H1<-c(82,46,66,23,41)
barplot(H1)

H2<-c(12,35,54,31,41)
M2<-c("Feb","Mar","May","Jun")
barplot(H2,names.arg=M2,clab="Month",ylav="Revenue",col="yellow",
        main=("Revenue Bar Chart"),border="red")

#Group Bar Chart & Stacked Bar Chart
months<-c("Jan","Feb","Mar","Apr","May")
regions<-c("West","North","South")
values<-matrix(c(21,32,33,14,95,46,67,78,39,11,22,23,94,15,16),nrow=3,ncol=5,byrow=TRUE)
barplot(values,main="Total Revenue",names.arg=months,
        xlab="Month",ylab="Revenue",
        col=c("red","blue","green"))
legend("topright",regions,cex=0.6,fill=c("red","blue","green"))

#Histogram
#A histogram is a type of bar chart which shows the frequency of 
#the number of values which are compared with a set of values ranges.
#The histogram is used for the distribution, whereas a bar chart is 
#used for comparing different entities. In the histogram, 
#each bar represents the heights of the number of values present 
#in the given range.
#For creating a histogram, R provides hist() function.

hist(v,main,xlab,ylab,xlim,ylim,breaks,col,border)

#S.No  Parameter Description
#1.    v: It is a vector that contains numeric values.
#2.    main: It indicates the title of the chart.
#3.    col: It is used to set the color of the bars.
#4.    border: It is used to set the border color of the each bar.
#5.    xlab: It is used to describe the x-axis.
#6.    ylab: It is used to describe the y-axis.
#7.    xlim: It is used to specify the range of values on the x-axis.
#8.    ylim: It is used to specify the range of values on the y-axis.
#9.    breaks: It is used to mention the width of each bar.

v<-c(12,24,16,38,21,13,55,17,39,10,60,59,58)
hist(v,xlab="Weight",ylab="Frequency",col="green",border="red")

#Use of xlim & ylim parameter
hist(v,xlab="Weight",ylab="Frequency",col="yellow",border="red",xlim=c(0,40),ylim=c(0,5),breaks=4)

#Line Graphs
#Line graph, there are points connecting the data to show the 
#continuous change. The lines in a line graph can move up and 
#down based on the data.
#R provides plot() function, which has the following syntax:
plot(v,type,col,xlab,ylab)

#S.No  Parameter Description
#1.    v: It is a vector that contains numeric values.
#2.    type: This parameter takes the value "l" to draw only the lines 
#      or "p" to draw only the points and "o" to draw both lines and points
#3.    xlab: It is used to describe the x-axis.
#4.    ylab: It is used to describe the y-axis.
#5.    main: It indicates the title of the chart.
#6.    col: It is used to give the color for both the points and lines.

v<-c(18,22,28,7,31,52)
plot(v)
plot(v,type="o")
plot(v,type="o",col="blue",xlab="Month",ylab="Temperature")

#Line Charts containing  multiple lines
v<-c(13,22,28,7,31)
w<-c(11,13,32,6,35)
x<-c(12,22,15,34,35)
plot(v,type="o",col="green",xlab="Month",ylab="Temperature")
lines(w,type="o",col="red")
lines(x,type="o",col="blue")

#Scatter Plots
#The scatter plots are used to compare variables.
#A comparison between variables is required when we need to 
#define how much one variable is affected by another variable.
#In a scatter plot, the data is represented as a collection of 
#points. Each point on the scatter plot defines the values of 
#the two variables. oOne variable is selected for the vertical 
#axis and other for the horizontal axis.

#In R, there are two ways of creating scatter plot, i.e.,
#using plot() function and using the ggplot2 packagesfunctions.

#There is the following syntax for creating scatter plot in R:
plot(x,y,main,xlab,ylab,xlim,ylim,axes)

#S.No  Parameter Description
#1.    x: It is the dataset whose values are the horizontal coordinates.
#2.    y: It is the dataset whose values are the vertical coordinates.
#3.    main: It indicates the title of the graph.
#4.    xlab: It is used to describe the horizontal axis.
#5.    ylab: It is used to describe the vertical axis.
#6.    xlim: It is the limits of the x values which is used for plotting. 
#7.    ylim: It is the limits of the y values which is used for plotting.
#8.    axes: It indicates whether both axes should be drawn on the plot.

view(mycars)
dim(mtcars)
names(mtcars)

#Fetching two columns from mtcars
data<-mtcars[,c('wt','mpg')]
view(data)

#Plotting the chart for cars with weight between 2.5 to and mileage
#between 15 and 30.
plot(x=data$wt,y=data$mpg,xlab="Weight",ylab="Mileage",
     xlim=c(2.5,5),ylilm=c(15,30),main="Weight v/s Mileage")

#Scatter plot using ggplot2
#In R, there is another way for creating scatter plot i.e.,
#with the help of ggplot2 package.

#The ggplot2 package provides ggpplot() and geom_point() function for 
#creating a scatter plot. The ggplot() function takes a series of the 
#input item. The first parameter is an input vector, and the second 
#is the aes() function in which we add the x-axis and y-axis.

#Loading ggplot2 package
library(ggplot2)
names(mtcars)

#Plotting the chartusing ggplot() and geom_point() functions.
ggplot(mtcars,aes(x=drat,y=mpg))+geom_point()

#The aes() function inside the geom_point() function controls the
#color of the group.
ggplot(mtcars,aes(x=drat,y=mpg))+geom_point(aes(color=factor(gear)))
names(mtcars)

ggplot(mtcars,aes(x=log(mpg),y=log(drat)))+
  geom_point(aes(color=factor(gear)))

#Box plots
#R provides a boxplot() function to create a boxplot.
#There is the following syntax of boxplot() function:
boxplot(x,data,notch,varwidth,names,main)

#S.No  Parameter Description
#1.    x: It is a vector or a formaula.
#2.    y: It is the data frame.
#3.    notch: It is a logical value set as true to draw a notch.
#4.    varwidth: It is also a logical value set as true to draw the width 
#      of the box same as the sample size.
#5.    names: It is the group of labels that will be printed under 
#      each boxplot.
#6.    main: It is used to give a title to the graph.

names(mtcars)
view(mtcars)
boxplot(mtcars$hp)

boxplot(mtcars$hp,
        main="mtcars DATA FRAME",
        xlab="X",
        ylab="Y",
        col="orange",
        border="brown",
        horizontal=TRUE,
        notch=TRUE)

#Boxplot form Formula
#The function boxplot() can also take in formulas of the form y~x
#where, y is a numeric vector which is grouped according 
#to the value of x.

names(mtcars)
boxplot(mpg~cyl,data=mtcars,xlab="Quantity of Cylinders",
        ylab="Miles Per Gallon",
        main="R Boxplot Example",
        col="orange",border="brown")

#Boxplot using notch
#In R, we can draw a boxplot using a notch. It helps us to find out
#how the medians of different data groups match with each other.

boxplot(mpg~cyl,data=mtcars,xlab="Quantity of cylinders",
        ylab="Miles Per Gallon",
        main="R Boxplot Example",
        notch=TRUE,varwidth=TRUE,
        col=c("green","yellow","red"),
        names=c("High","Medium","Low"))

