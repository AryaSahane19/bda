# Continuous Query:
# Function to generate a single data point 
generate_data_point <- function() { 
  data.frame( 
	timestamp = as.integer(Sys.time()), 
	temp = runif(1, 10, 30), 
	humidity = runif(1, 30, 80), 
	light = runif(1, 0, 1000)   ) }   
# Function to process each data point 
process_data_point <- function(data) { 
  if (data$temp > 25 || data$humidity > 70) { 
	cat("Alert: Abnormal conditions detected at", format(Sys.time(), "%H:%M:%S"), "\n") 
	cat("Temperature:", round(data$temp, 2), "°C, Humidity:", round(data$humidity, 2), "%\n") 
  } } 
  
# Continuous query simulation 
cat("Starting continuous query. This will run for 30 seconds. Press Esc to stop early.\n") 
start_time <- Sys.time() 
  while(difftime(Sys.time(), start_time, units = "secs") < 30) { 
  # Generate and process a new data point 
  data_point <- generate_data_point() 
  process_data_point(data_point)    
  # Simulate some processing time 
  Sys.sleep(0.5) 
} 
cat("Continuous query finished.\n") 

#The code simulates a continuous data query that generates and processes environmental data points (temperature, humidity, and light) for 30 seconds, checking for abnormal conditions.
#This code continuously monitors simulated environmental data, generating alerts for any readings that indicate abnormal conditions, providing a basic framework for real-time data monitoring.
