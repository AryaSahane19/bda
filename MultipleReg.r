# Example dataset
data <- data.frame(
  x1 = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  x2 = c(2, 1, 4, 3, 6, 5, 8, 7, 10, 9),
  y = c(2.3, 2.5, 3.0, 3.7, 4.5, 5.1, 6.0, 6.7, 7.8, 8.0)
)

# Fit Multiple Regression model
multiple_model <- lm(y ~ x1 + x2, data = data)

# Summary of the model
summary(multiple_model)

# Predict on new data
new_data <- data.frame(x1 = c(11, 12), x2 = c(8, 9))
predictions <- predict(multiple_model, new_data)

# Print predictions
print(predictions)

# Plotting
library(ggplot2)
library(plotly)

# 3D Plot for Multiple Regression
plot_ly(data, x = ~x1, y = ~x2, z = ~y, type = "scatter3d", mode = "markers") %>%
  add_surface(z = fitted(multiple_model), opacity = 0.5) %>%
  layout(title = "Multiple Regression")


----------------------------------------------------------------
# Fit Multiple Regression model
multiple_model <- lm(mpg ~ wt + hp + qsec, data = mtcars)

# Summary of the model
summary(multiple_model)

# Predict on new data
new_data <- data.frame(wt = c(2.5, 3.0), hp = c(100, 150), qsec = c(18, 20))
predictions <- predict(multiple_model, new_data)

# Print predictions
print(predictions)

# Visualizing Multiple Regression
library(plotly)

# Create a 3D plot
plot_ly(mtcars, x = ~wt, y = ~hp, z = ~mpg, type = "scatter3d", mode = "markers") %>%
  add_surface(z = fitted(multiple_model), opacity = 0.5) %>%
  layout(title = "Multiple Regression: MPG vs Weight and HP")

# Instructions to Run in R Studio
# Open R Studio.
# Create a new R script or open a new R Notebook.
# Copy and paste each block of code into separate sections.
# Run each block sequentially to see the output, predictions, and plots.

# Multiple Regression: Used for predicting a continuous outcome with multiple predictors.
# Predicts mpg using multiple predictors (wt, hp, and qsec).