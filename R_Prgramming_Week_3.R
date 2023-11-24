

# lapply function

x<- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

# runif can be used to create uniform random variables.

x<- 1:4
lapply(x, runif, min = 1, max = 10)

# sapply function

?sapply

# apply function

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean)
apply(x, 1, sum)

rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

# quantiles function 
?quantile

x <- matrix(rnorm(200), 20, 10)
apply(x, 1, quantile, probs = c(0.25, 0.75))

# mapply function

str(mapply)

#instead of list(rep(1,4), rep(2,3), rep(3,2), rep(4,1)) We can use mapply
mapply(rep, 1:4, 4:1)

# fun is the function
# ... is the arguments
# moreargs is a list of other arguments to fun
# simplify indicates whether the result should be simplified or not

# Debugging

# Warning
log(-1)

# Error
printmessage <- function(x){
        if (x > 0)
                print("x is greater than zero")
        else
                print("x is less than or equal to zero")
        invisible(x)
}
