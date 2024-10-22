# if you haven't installed 
# install.packages("dplyr")
# Load necessary library
library(dplyr)

# Sample data frame
data <- data.frame( 
  id = 1:10, 
  name = c("Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hannah", "Ivy", "Jack"), 
  age = c(25, 30, 35, 28, 22, 31, 29, 27, 26, 24), 
  city = c("Mumbai", "Delhi", "Chennai", "Mumbai", "Delhi", "Chennai", "Mumbai", "Delhi", "Chennai", "Mumbai"), 
  salary = c(50000, 60000, 55000, 62000, 49000, 65000, 58000, 47000, 51000, 63000) 
) 

# One-time query to filter data
min_age <- 25
max_salary <- 60000

filtered_data <- data %>%
  filter(age >= min_age, salary <= max_salary)

# Display the result
print(filtered_data)

# Explanation
# Data Frame Creation: A sample data frame named data is created with columns for id, name, age, city, and salary.
# Filtering: The filter() function from the dplyr package is used to create a one-time query. It filters rows where the age is greater than or equal to min_age and salary is less than or equal to max_salary.
# Result Display: The filtered data is printed to the console.