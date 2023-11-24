add2 <- function(x, y){
  x + y
}

above <- function(x,n = 10){
  use <- x > n
  x[use]
}
#n = 10 specify a default value for the function

#function to calculate column mean

columnmean <- function(y, removeNA = TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[ , i])
  }
  means
}
# removeNA = TRUE makes it so that the NA values is not considered in the Function.But
# If you want to get the NA values we will have to put FALSE attribute to the function.