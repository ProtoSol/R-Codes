# Create a data frame with the provided data
data <- data.frame(
        Subject = c("English", "Math", "Science", "Economics", "English", "Math", "Science", "Economics", "English", "Math", "Science", "Economics", "English", "Math", "Science", "Economics", "English", "Math", "Science", "Economics"),
        SectionA = c(59, 96, 78, 96, 65, 78, 68, 96, 85, 93, 94, 67, 82, 64, 55, 73, 89, 57, 67, 78),
        SectionB = c(65, 73, 57, 79, 55, 65, 61, 98, 63, 88, 66, 59, 66, 79, 90, 89, 66, 81, 92, 65),
        SectionC = c(82, 66, 81, 73, 94, 56, 85, 56, 85, 68, 94, 86, 96, 63, 97, 95, 75, 73, 88, 69)
)

# Load necessary libraries
library(ggplot2)

# 1. Boxplots
par(mfrow = c(2, 2))
for (i in 2:4) {
        boxplot(data[, i], main = colnames(data)[i], col = "cyan")
}

# 2. Histograms
par(mfrow = c(2, 2))
for (i in 2:4) {
        hist(data[, i], main = colnames(data)[i], xlab = "Value", col = "grey")
}

# 3. Bar Plot (Mean values)
mean_values <- colMeans(data[, 2:4])
bar_data <- data.frame(Section = colnames(data)[2:4], Mean = mean_values)
barplot(height = bar_data$Mean, names.arg = bar_data$Section, main = "Mean Values by Section", col = "darkred")

# 4. Pie Chart (Total scores)
pie_data <- colSums(data[, 2:4])
pie_labels <- colnames(pie_data)
pie(pie_data, labels = pie_labels, main = "Total Scores by Section", col = rainbow(length(pie_data)))

# 5. Scatter Plot (Section B vs. Section C)
scatter_data <- data[, c("SectionB", "SectionC")]
colnames(scatter_data) <- c("Section B", "Section C")
scatter_plot <- ggplot(data = scatter_data, aes(x = `Section B`, y = `Section C`)) +
        geom_point() +
        labs(title = "Scatter Plot of Section B vs. Section C")
print(scatter_plot)
