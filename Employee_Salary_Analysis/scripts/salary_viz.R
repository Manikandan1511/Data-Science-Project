library(ggplot2)
library(dplyr)

# 1. Load the data
data <- read.csv("../data/cleaned_salary_data.csv")

# 2. Boxplot: Salary Distribution by Department
p1 <- ggplot(data, aes(x = Department, y = Salary, fill = Department)) +
  geom_boxplot(alpha = 0.7) +
  geom_jitter(width = 0.2, alpha = 0.5) + # Adds individual dots for employees
  theme_minimal() +
  labs(title = "Employee Salary Distribution by Department",
       subtitle = "Dots represent individual employee salaries",
       x = "Department", y = "Salary ($)")

# Bar Chart: Average Salary per Department
dept_avg <- data %>%
  group_by(Department) %>%
  summarise(AverageSalary = mean(Salary))

p2 <- ggplot(dept_avg, aes(x = Department, y = AverageSalary, fill = Department)) +
  geom_bar(stat = "identity") +
  theme_classic() +
  labs(title = "Average Salary Comparison",
       x = "Department", y = "Average Salary ($)")

# Save the Final Report
ggsave("../data/salary_report.png", plot = p1, width = 8, height = 5)
print("Project 3: Salary report generated successfully!")