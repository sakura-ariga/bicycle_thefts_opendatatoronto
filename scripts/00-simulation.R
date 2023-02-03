# Set up workspace
install.packages("tidyverse")
install.packages("janitor")
library(tidyverse)
library(janitor)

# Create sample data to simulate bicycle theft in Toronto data 
simulated_data <- 
  tibble(
    "Year" = c(2018:2022),
    "Neighbourhood_ID_Most_Thefts" = sample(
      x = c(1:140),
      size = 5,
      replace = TRUE
    ),
    "Neighbourhood_ID_Least_Thefts" = sample(
      x = c(1:140),
      size = 5,
      replace = TRUE
    ),
    "Theft_Number" = runif(n = 5, min = 1, max = 500)
    )

# View simulated data
simulated_data

# # Save simulated data to inputs folder
write.csv(
  x = simulated_data, 
  "inputs/data/simulated_data.csv"
)