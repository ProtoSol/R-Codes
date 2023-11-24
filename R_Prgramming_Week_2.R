# Starting from for loop

for (i in 1:10){
  print(i)
}

x <- c("a","b","c","d")
for(i in seq_along(x)){
  print(x[i])
}
# seq_along() is used for finding the total number of characters in the provided string.

for(i in 1:4){
  print(x[i])
}

for(letter in x){
  print(letter)
}

x <- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}
# seq_len() is used to find the length of a sequence


# While Loop

count <- 0
while(count < 10){
  print(count)
  count <- count + 1
}

z <- 5
while(z >= 3 && z <= 10){
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1){
    z <- z + 1
  } else{
    z <- z - 1
  }
}

# Functions were made into a new .R file

# Argument Matching

mydata <- rnorm(100)
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

# use of args function to see the total number of arguments and their order in a specified function.

args(sd)
args(lm)

# Below both methods are valid to use but can cause confusion for others.

lm(data = mydata, y - x, model = FALSE, 1:100)
lm(y - x, mydata, 1:100, model = FALSE)


# Search Function usage
search()
args(search)

# Example of Lexical Scoping

make.power <- function(n) {
  pow <- function(x){
    x^n
  }
  pow
}
# Making a function in function
cube <- make.power(3)
square <- make.power(2)
quad <- make.power(4)
cube(3)
square(3)

# Use of ls(environment()) to see the local environment of the function.
ls(environment(cube))
ls(environment(square))
ls(environment(quad))

# we can also use get() function to get the specific value of the attribute from the local environment.

get("n", environment(square))
get("pow", environment(quad))

# Date and Time in R

x <- Sys.time()
x
p <- as.POSIXlt(x)
# converting into one of the POSIXct and POSIXlt class
names(unclass(p))
# To find the names in the object.
p$sec
# Using the name to get Second.
q <- as.POSIXct(x)
names(unclass(q))
q
p$isdst

datestring <- c("January 10, 2012 10:40")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)

# End of Week 2

# Assessment

