library(ggplot2)
library(dplyr)

# Load the data we just created with Python
data <- read.csv("../data/cleaned_student_data.csv")

# Bar Chart of Grades by Subject
p1 <- ggplot(data, aes(x = Subject, fill = Grade)) +
  geom_bar(position = "stack") +
  theme_minimal() +
  scale_fill_brewer(palette = "RdYlGn", direction = -1) +
  labs(title = "Grade Distribution per Subject",
       subtitle = "A-B (Green), C (Yellow), F (Red)")

# Marks vs Attendance (The Business Insight)
p2 <- ggplot(data, aes(x = Attendance, y = Marks, color = Status)) +
  geom_point(size = 4) +
  geom_hline(yintercept = 50, linetype = "dashed", color = "red") +
  theme_light() +
  labs(title = "Impact of Attendance on Student Marks",
       x = "Attendance Percentage (%)", y = "Marks")

# Save the final report image
ggsave("../data/student_performance_report.png", plot = p2, width = 8, height = 5)
print("Project 2 Report Generated!")