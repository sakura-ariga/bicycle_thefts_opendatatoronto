# Set up workspace
install.packages("tidyverse")
install.packages("janitor")

library(tidyverse)
library(janitor)

# Create sample data 

simulated_data <- 
  sample(x = 1:300, size = 5, replace = TRUE)
simulated_data

simulated_data <- 
  runif(
    n = 5, 
    min = 
  )

simulated_data <- 
  tibble(
    "Neighbourhoods" = 1:140,
    "Year" = sample(
      x = c(
        "2018", 
        "2019", 
        "2020", 
        "2021",
        "2022"
      )
    ),
    size = 140,
    replace = TRUE
    )

# Test sample data 