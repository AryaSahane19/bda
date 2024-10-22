# Example dataset
data <- data.frame(
  x = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  y = c(0, 0, 0, 0, 1, 1, 1, 1, 1, 1)
)

# Fit Logistic Regression model
logistic_model <- glm(y ~ x, data = data, family = "binomial")

# Summary of the model
summary(logistic_model)

# Predict probabilities on new data
new_data <- data.frame(x = c(5, 7, 9))
predictions <- predict(logistic_model, newdata = new_data, type = "response")

# Print predictions
print(predictions)

# Plotting
ggplot(data, aes(x, y)) +
  geom_point() +
  stat_smooth(method = "glm", method.args = list(family = "binomial"), se = FALSE, color = "blue") +
  labs(title = "Logistic Regression", x = "X", y = "Probability")

------------------------------------------------
# Load necessary library
library(ggplot2)

# Use the iris dataset
data(iris)

# Convert Species to a binary factor for logistic regression
iris$Species <- ifelse(iris$Species == "setosa", 1, 0)

# Fit Logistic Regression model
logistic_model <- glm(Species ~ Sepal.Length + Sepal.Width, data = iris, family = "binomial")

# Summary of the model
summary(logistic_model)

# Predict probabilities on new data
new_data <- data.frame(Sepal.Length = c(5.0, 5.5), Sepal.Width = c(3.5, 3.0))
predictions <- predict(logistic_model, newdata = new_data, type = "response")

# Print predictions
print(predictions)

# Plotting
ggplot(iris, aes(x = Sepal.Length, y = Species)) +
  geom_point() +
  stat_smooth(method = "glm", method.args = list(family = "binomial"), se = FALSE, color = "blue") +
  labs(title = "Logistic Regression: Species Prediction", x = "Sepal Length", y = "Probability of Setosa")

# Instructions to Run in R Studio
# Open R Studio.
# Create a new R script or open a new R Notebook.
# Copy and paste each block of code into separate sections.
# Run each block sequentially to see the output, predictions, and plots.

# Logistic Regression: Used for predicting a binary outcome.
# Predicts whether a flower is setosa based on Sepal.Length and Sepal.Width in the iris dataset.