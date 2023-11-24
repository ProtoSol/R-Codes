x <- c(1, 2, NA, 4, NA, 6, 7, NA, 9)
is.na(x)

y <- c(1, 2, NaN, 4, 5, 6, 7, NaN)
is.nan(y)

y

df <- data.frame(A = c(1, 2, NA, 4), B = c(NA, 5, 6, 7))
na.omit(df)
df

x <- c(1, 2, NA, 4, NA, 6)
mean_x <- mean(x, na.rm = TRUE)
x[is.na(x)] <- mean_x
x

library(datasets)
#Importing the Dataset
data("iris")
head(iris)
#Summarizing the Dataset
summary(iris)
str(iris)
head(iris)
#Exporting the Dataset
write.csv(iris, "output.csv")

