# Import simulated data from the inputs folder
simulated_data <- read.csv(here::here("inputs/data/simulated_data.csv"))

# Created tests to check the sample data created in 00_simulation.R file
simulated_data$Theft_Number |> 
  class() == "numeric"

simulated_data$Year |> 
  max() == 2022

simulated_data$Neighbourhood_ID_Least_Thefts |> 
  length() == 5