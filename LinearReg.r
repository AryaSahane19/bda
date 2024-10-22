# Load necessary libraries
library(ggplot2)

# Example dataset
data <- data.frame(
  x = 1:10,
  y = c(2.3, 2.5, 3.0, 3.7, 4.5, 5.1, 6.0, 6.7, 7.8, 8.0)
)

# Fit Linear Regression model
linear_model <- lm(y ~ x, data = data)

# Summary of the model
summary(linear_model)

# Predict on new data
new_data <- data.frame(x = c(11, 12, 13))
predictions <- predict(linear_model, new_data)

# Print predictions
print(predictions)

# Plotting
ggplot(data, aes(x, y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  geom_point(data = new_data, aes(y = predictions), color = "red", size = 3) +
  labs(title = "Linear Regression", x = "X", y = "Y")
----------------------------------------------------------------
# Load necessary library
library(ggplot2)

# Use the mtcars dataset
data(mtcars)

# Fit Linear Regression model
linear_model <- lm(mpg ~ wt, data = mtcars)

# Summary of the model
summary(linear_model)

# Predict on new data
new_data <- data.frame(wt = c(2.5, 3.0, 3.5))
predictions <- predict(linear_model, new_data)

# Print predictions
print(predictions)

# Plotting
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  geom_point(data = new_data, aes(y = predictions), color = "red", size = 3) +
  labs(title = "Linear Regression: MPG vs Weight", x = "Weight", y = "Miles Per Gallon (MPG)")


# Instructions to Run in R Studio
# Open R Studio.
# Create a new R script or open a new R Notebook.
# Copy and paste each block of code into separate sections.
# Run each block sequentially to see the output, predictions, and plots.

# Linear Regression: Used for predicting a continuous outcome.
# Examines the relationship between weight (wt) and miles per gallon (mpg) in the mtcars dataset.
