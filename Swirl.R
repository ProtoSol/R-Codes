install.packages("swirl")
packageVersion("Swirl")
library(swirl)
5+7
x <- 5 + 7
x
y <- x - 3
y
z <- c(1.1, 9, 3.14)
?c
z
c(z, 555, z)
z * 2 + 100
my_sqrt <- sqrt(z-1)
3
my_sqrt
my_div <- z / my_sqrt
2
my_div
c(1, 2, 3, 4) + c(0, 10)
c(1,2,3,4) + c(0,10,100)



x <- 9
ls()
list.files()
args(list.files())
args(list.files)
old.dir <- ls()
old.dir <- getwd()
dir.create("testdir")
setwd("testdir")
file.create("mytest.R")
ls()
list.files()
file.exists("mytest.R")
file.info("mytest.R")
file.rename("mytest.R", "mytest2.R")
file.copy("mytest2.R", "mytest3.R")
file.path('folder1', 'folder2')
?dir.create
file.remove("testdir")
setwd("R Programming")
getwd()



1:20
pi:10
15:1
?`:`
seq(1,20)
seq(0,10, by = 0.5)
my_seq <- seq(5,10, length = 30)
length(my_seq)
1:length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
rep(0, times = 40)
rep(c(0,1,2), times = 10)
rep(c(0,1,2), each = 10)



num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
1
print(tf)
tf
num_vect >= 6
2
2
1
my_char <- c("My", "name", "is")
my_char
paste(my_char)
paste(my_char, collapse = " ")
my_name <- c(my_char, "Pranshu")
my_name
paste(my_name, collapse = " ")
paste("Hello", "world!", sep = " ")
x <- c(1:3)
paste(1:3, c("X", "Y", "Z"), sep = "")
paste(LETTERS, 1:4, sep = "-")
1


x <- c(44, NA, 5, NA)
x*3
y<- rnorm(1000)
z<- rep(NA, 1000)
my_data <- sample(c(y,z), 100)
my_na <- is.na(my_data)
print(my_na)
my_na
my_data == NA
sum(my_na)
my_data
0/0
Inf - Inf
1



x
x[[]]
x[1:10]
3
1
1
x[is.na(x)]
y <- x[!is.na(x)]
y
1
y[y > 0]
x[x > 0]
x[!is.na(x) & x >0]
x[c(3,5,7)]
x[o]

# Week 2

TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
5 != 7
!(5 == 7)
FALSE & FALSE

# Fixing an ERROR
# create file path to swirl lesson file
file_path <- file.path(find.package("swirl"),"Courses","R_Programming","Logic","lesson.yaml")
# url of my edited lesson file
file_url <- "https://raw.githubusercontent.com/daniel-j-miller/swirl_courses/master/R_Programming/Logic/lesson.yaml"

# download and save file
download.file(file_url, file_path)
isTRUE(6 > 4)
4
1
4
1
4
identical('twins', 'twins')
ints <- sample(10)
ints
ints > 5
which( ints > 7)
any(ints < 0)
all(ints > 0)


Sys.Date()
mean(c(2,4,5))
remainder(5)
remainder(11, 5)
remainder(4, div = 2)
args(remainder)

