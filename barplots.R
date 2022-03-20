library(ggplot2)

### Creating custom barplots

data <- data.frame(
  quarter=c("Q1", "Q1", "Q2", "Q2", "Q3", "Q3", "Q4", "Q4"),
  product=c("A", "B", "A", "B", "A", "B", "A", "B"),
  profit=c(10, 14, 12, 11, 13, 15, 16, 18)
)

# base bar chart
ggplot(data, aes(x = quarter, y = profit)) +
  geom_col()

ggplot(data, aes(x = quarter, y = profit)) +
  geom_col(color = "#0099f9", fill = "#ffffff")

ggplot(data, aes(x = quarter, y = profit)) +
  geom_col(fill = "#0099f9") +
  theme_classic()

