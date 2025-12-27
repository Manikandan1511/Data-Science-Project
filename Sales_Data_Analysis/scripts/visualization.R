# Load libraries
library(ggplot2)
library(dplyr)

data <- read.csv("../data/cleaned_sales_data.csv")

# Bar Chart: Revenue by Category
p1 <- ggplot(data, aes(x = Category, y = Revenue, fill = Category)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Total Revenue by Product Category",
       x = "Category", y = "Revenue ($)") +
  scale_fill_brewer(palette = "Set2")

# Histogram: Distribution of Sale Prices
p2 <- ggplot(data, aes(x = Price)) +
  geom_histogram(binwidth = 100, fill = "#69b3a2", color = "#e9ecef") +
  theme_minimal() +
  labs(title = "Distribution of Product Prices",
       x = "Price ($)", y = "Frequency")

# Scatter Plot: Quantity vs Revenue (Is more quantity always better?)
p3 <- ggplot(data, aes(x = Quantity, y = Revenue, color = Region)) +
  geom_point(size = 3) +
  theme_light() +
  labs(title = "Revenue vs Quantity by Region",
       x = "Quantity Sold", y = "Total Revenue")

# Export the charts to a PDF or PNG
ggsave("../data/revenue_analysis.png", plot = p1, width = 8, height = 5)
print("Visualization created and saved as revenue_analysis.png!")
