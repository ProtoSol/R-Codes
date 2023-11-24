x <- 1
mag <- "Hello"
print(x)
x <- 1:20


## this is a comment and will be ignored by the system

print(x)


## Here you can see the [] represents the first number of the vector that is prointed in half screen arr starts from 1 and in next line it starts from 18

length(x)
names(x)

class(x)
class(mag)

x <- vector("numeric", length = 10)
x[1] <- 1
x[10] <- 1
print(x)

#The vector can be updated through direct change.

#Now we will try to mix objects in the vector and see what happens

y <- c(1.7,'a')
class(y)
y <- c(TRUE, 2)
class(y)
y <- c('a' ,TRUE)
class(y)

#This gives out a mixed Result where the higher atomic subclass changes the whole vector, making it into one single class vector

#Explicit Coercion

x <- 0:6
class(x)

as.numeric(x)
#To convert to Numeric

as.logical(x)
#To convert into Logical

as.character(x)
#To convert into Character

# Making the list is very useful as it can store objects in itself.

a <- list(1, x, y, 1 + 4i)
print(a)

# MATRICES

m <- matrix(nrow = 2, ncol = 3)
print(m)
# We can use the Attributes to find various Properties of Matrices 
dim(m)
attributes(m)

# If we create a basic Vector in the Matrix, Elements are filled row wise.

m <- matrix(1:6, nrow = 2, ncol = 3)
print(m)

# There is another way to enter Elements into a Matrix

m <- 1:10
dim(m) <- c(2,5)
m

# Binding Method. cbind() and rbind()

x <- 1:3
y <- 10:12

# The Number of Elements should be the same for Bind function to work Properly.

cbind(x,y)
rbind(x,y)

# Factors

x <- factor(c("yes", "yes", "no", "yes", "no"))
print(x)
# It prints a bit differently as it shows the Unique values.

table(x)
# Table() gives out the number of unique elements present in the factor.

unclass(x)
# unclass() gives the unique element an integer value That is easy to use in datasets.

x <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no"))
print(x)
unclass(x)

# Here we can make the first level implicitly. 

# Missing Values

x[1] <- NaN
print(x)

# NA represents Not Applicable. To check for NA we use is.na(), for NAN
# We use is.nan()
# NaN value is NA but converse is not true.

is.nan(x)
is.na(x)

# Data Frame

x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
print(x)

nrow(x)
# nrow() to find the number of rows in the data frame

ncol(x)
# ncol() to find the number of columns in the data frame

# Name Attribute.

x <- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
print(x)
names(x)

# This can also be used in list and matrices 

# dput() and dump functions used to get data out of R with certain advantages.

y <- data.frame(a = 1, b = "a")
dput(y)
dput(y, file = "y.R")
new.y <- dget("y.R")
new.y

# dget() function is used to get the file made using dput()
# dump is used for multiple R objects whereas the dput() is used only for one object.

x <- "foo"
# using y from above
dump(c("x", "y"), file = "data.R")

rm(x,y)
# rm() is used to remove the object from the environment.
source("data.R")
print(y)
print(x)

# Many Functions to connect to other things are written in notes.

str(file)
# gives out the total description of the file.

# Sub-setting
x <- c("a", "b", "c", "d", "e")
x[1]
x[2]
x[1:4]

x[x > "a"]
# R programming can handle comparison of Alphabets.

u <- x > "a"
print(u)
x[u]

x <- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]
# Use of Subsets

x <- list(foo = 1:4, bar = 0.6, baz = "hello")
name <- "foo"
x[[name]]
# variables cannot be used while using $ function, We are reqquired to use the exact name while using $ function.
x$name
x$foo

x <- list(a = list(10,12,14), b = c(3.14,2.81))
x[[c(1,3)]]
# the first integer defines the list while the second integer defines the location of element in the first list
x[[1]][[3]]
x[[c(2,1)]]
# This is the syntax to find out the specific value on the given location

# This is the same way we can use sub-setting in Matrices
# When using sub-setting in matrices when we print out the exact element it comes out as individual element
# to stop this we need to use the drop = FALSE preset to revert the output as a part of the matrix

x <- matrix(1:6,2,3)
print(x)
x[1,2]
x[1,2, drop = FALSE]
x[1,,drop = FALSE]

# We can type the name partially and it will work with [[ and $
x <- list(aardvark = 1:5)
x$a
# we need to add one more condition in the [[ ]] to make it work with partial words
x[["a"]]
x[["a", exact = FALSE]]

# We at the end can also remove NA values from the vectors , lists and matrices
x<- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
x[!bad]

# Similarly we can find the complete cases and print them exclusively
y <- c("a", "b", "c", NA, "d", NA)
good <- complete.cases(y)
y[good]
good <- complete.cases(x)
x[good]

# R language supports Vectorized Operations

x <- 1:4
y <- 6:9
x + y
x >= 2
y == 8
x*y
x/y

# Even for Matrices

x <- matrix(1:4,2,2)
y <- matrix(rep(10,4), 2,2)
x*y   #Element wise Multiplication
x / y
x %*% y   #True Matrix Multiplication

# QUIZ
x<-1:4
y<-2:3
x+y

x <- 1:10
x[x > 5] <- 5
x

dat <- read.csv("C:/Users/PS144/Desktop/hw1_data.csv")
dat[47, ]
nrow(dat)
sum(is.na(dat$Ozone))
mean(dat$Ozone, na.rm=TRUE)
mean(dat[which(dat$Ozone >31 & dat$Temp > 90),]$Solar.R)
mean(dat[which(dat$Month == 6),]$Temp)
max(dat[which(dat$Month == 5),]$Ozone, na.rm = TRUE)

x <- list(2,"a", "b", TRUE)
x[[1]]
x <- 1:4
y<- 2
x+y

x <- (1:10)
x[x < 6] == 0
