# Creating a sample dataframe
df <- data.frame(Category = c('A', 'B', 'C', 'D', 'E'), Values = c(25, 40, 30, 35, 20))

# Line Chart
# Create a sequence of numbers for the x-axis
x_values <- seq_along(df$Category)

# Plot using the sequence for the x-axis and label with categories
plot(x_values, df$Values, type = "o", main = "Line Chart", xlab = "Category", ylab = "Values")

# Box Plot
boxplot(df$Values, main = "Box Plot", ylab = "Values")

# Histogram
hist(df$Values, main = "Histogram", xlab = "Values", ylab = "Frequency")

# Pie Chart
pie(df$Values, labels = df$Category, main = "Pie Chart")

# Bar Chart
barplot(df$Values, names.arg = df$Category, main = "Bar Chart", xlab = "Category", ylab = "Values")
