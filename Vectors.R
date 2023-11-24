
x <- 0
# Using seq() to create a sequence from 1 to 10
v <- c(2, 6, 8, 12, 18)
print(v)

v <- 1:10
print(v)

v <- seq(1, 10)
print(v)

# Using rep() to repeat elements of a vector
v <- c(1, 2, 3, 4)
v1 <- rep(v, times = 3)  
print(v1)


for(x in range(15)){
        if(x == ){
        break;
        }
        print(x)
        }


x <- 0
while(x < 20){
        
        if(x %% 2 == 0){
                print('Even')
        } else {
                print('Odd')
        }
        
        x <- x + 1
}

numb <- list(1, 2, 3, 4, 5, 6)
matrix1 <- matrix(data = unlist(numb), nrow = 3, ncol = 2, byrow = TRUE)
matrix2 <- matrix1[, 2]
print(matrix2)

print(2%in%matrix1)



dim(matrix1)
new_row <- list('G', 'H')
matrix2 <- rbind(matrix1, new_row)
print(matrix2)


d1 <- data.frame(
        
        Id = c(100,101,102),
        Name = c('Pranshu', 'Prabhat', 'Tanmay'),
        Pass = c(TRUE, TRUE, FALSE)
        
)
print(d1)
dim(d1)
summary(d1)

f1 <- factor(c('Red', 'Green', 'Red', 'Green', 'Blue', 'Green'))
print(f1)
levels(f1)

aplhabets <- list('A', 'B', 'C', 'D', 'E', 'F')
matrix1 <- matrix(nrow = 3, ncol = 2, data = aplhabets)

newrow <- c('G', 'H')
matrix1 <- rbind(matrix1, newrow)

newcol <- c('I','J','K')
matrix1 <- cbind(matrix1, newcol)
matrix2 <- matrix1[0,1:2]
print(matrix2)

function1 <- function(x) {
        function2 <- function(y) {
                return(y * 2)
        }
        result <- function2(x)
        return(result)
}

result <- function1(5)
print(result)

fac <- function(n) {
        if (n == 0) {
                return(1)
        } else {
                return(n * fac(n - 1))
        }
}
result <- fac(5)
print(result)

for(x in seq(1,15)){
        if(x == 9){
                break;
        }
        print(x)
}

v <- seq(1, 5)
print(v)
v <- 1:10
print(v)
v <- c(1,2,3,4,5)
print(v)
v <- c(1, 2)
v1 <- rep(v, times = 3)  
print(v1)

numb <- list(2,4,8,10,12)
matrix1 <- matrix(data = unlist(numb), nrow = 3, ncol = 2, byrow = TRUE)
matrix2 <- matrix1[, 2]
print(matrix2)
print(2%in%matrix1)

function_out <- function(x) {
        function_in <- function(y) {
                return(y * 2)
        }
        result <- function_in(x)
        return(result)
}

result <- function_out(7)
print(result)

factorial <- function(n) {
        if (n == 0) {
                return(1)
        } else {
                return(n * factorial(n - 1))
        }
}
result <- factorial(9)
print(result)



