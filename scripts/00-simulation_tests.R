# Test sample data 
simulated_data$Theft_Number |> 
  class() == "numeric"

simulated_data$Year |> 
  max() == "2022"

simulated_data$Neighbourhood_ID_Least_Thefts |> 
  length() == "5"