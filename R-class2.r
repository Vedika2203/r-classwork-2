#lecture 2 on R

#vector append recap

names <- c("IND", "GBP", "USD", "AED")

name = c("a","b","d","e")
name1 = "c"
name3 = c(name[1:2],name1,name[3:4])
name3


names1 <- "YEN"
names2 <- c(names[1],names1,names[2:4])
names2


#vector arithmetic
#vectorization - helps in excuting same function on whole vector. No loops needed
fifth <- c(1:10)
fifth* 5 

#vectorization for char vector
month.abb
paste(month.abb, "is a month")

#factors - it is an ordinal with an order. The order doesn't need to be in ascending or descending order
#factors can be used in plots,graphs,etc. Factor is a vector with levels

days <- c("Thu","Wed","Sun")
sort(days) #sorts by alphabetical order

week_levels <- c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
(days_f <- factor(days, levels = week_levels))  #when you sort by levels it shows proper desired order

#List - more data can be stored of various types
(a_list <- list("abcd",123,1:12,month.abb))
length(a_list) #individual elements have other elements. Only comma seperated elements are counted
a_list[[2]] #everything in second element

a_list[[3]][3:5] #will give element 3,4,5 inside element 3 
a_list[[4]][4]

#Matrix
new_m <- matrix(data = 1:12, nrow = 3) #data gives total number of elements, nrow gives number of rows
new_m
new_m * 20
dim(new_m) #gives dimensions
new_m[2,3] #calling a number in a matrix. row,col

first <-C(2,4,5)
second <-c(4,5,6)
A=matrix(data = c(first,second), nrow = 2)

#Dataframe- tabular structure with col and row
colleges <- c("CIT","GCT","PSG")
year <- c(2019,2018,2017)
db <- data.frame(college_names = colleges, year_since = year) #column name , row name
db

View(mtcars) #inbuilt data file #View function is used to see dataframe
names(mtcars)  #calling column names, can also say col.names
row.names(mtcars) #calling row names
mtcars_1 <- mtcars[,c(1,2)] #will give entire row and first and second column
mtcars_2 <- mtcars[1:5,] #will give first five rows and entire columns
#column is called dimension and row is called variable

db$college_names #acessing observation in a particular column
db[2,2] #accessing particular observation
db$college_names[2] #acessing one particular element in a particular column 

#head gives starting rows,col. tail gives last row,col
(tail(names(iris), 2)) #gives the names of last two col in the dataframe iris

df <- iris
day <- "Saturday"
df$day <- day #adding another col with saturday
#can also be done like this -  df$day <- "Saturday"
