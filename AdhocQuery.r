# Ad-hoc Query:
# Install shiny if you haven't 
# install.packages("shiny")  
library(shiny) 
library(dplyr) 
# Sample data frame 
data <- data.frame( 
  id = 1:10, 
  name = c("Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hannah", "Ivy", "Jack"), 
  age = c(25, 30, 35, 28, 22, 31, 29, 27, 26, 24), 
  city = c("Mumbai", "Delhi", "Chennai", "Mumbai", "Delhi", "Chennai", "Mumbai", "Delhi", "Chennai", "Mumbai"), 
  salary = c(50000, 60000, 55000, 62000, 49000, 65000, 58000, 47000, 51000, 63000) 
) 
ui <- fluidPage( 
  titlePanel("Ad-hoc Query Example"),   
  # Inputs for Ad-hoc queries 
  numericInput("min_age", "Minimum Age:", value = 25, min = 20, max = 40), 
  numericInput("max_salary", "Maximum Salary:", value = 60000, min = 40000, max = 70000),   
  # Show result 
  tableOutput("ad_hoc_result") 
) 
server <- function(input, output, session) { 
  # Reactive expression to filter data 
  filtered_data <- reactive({ 
	data %>% 
  	filter(age >= input$min_age, salary <= input$max_salary) 
  }) 
  
  # Display the filtered data 
  output$ad_hoc_result <- renderTable({ 
	filtered_data() 
  }) 
} 
shinyApp(ui, server) 
#This Shiny app allows users to filter a sample dataset by minimum age and maximum salary, displaying the results in a table format.