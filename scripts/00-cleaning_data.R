# Set up workspace
install.packages("tidyverse")
library(tidyverse)

# Cleaned the data by ______
cleaned_bike_theft_data <- 
  readr::read_csv((here::here("inputs/data/bike_theft_raw_data.csv"))) |> 
  filter(Report_Year != "2022") |> 
  select(
    Report_Year,
    NeighbourhoodName,
    Premises_Type
  )
write.csv(
  x = cleaned_bike_theft_data, 
  "/cloud/project/inputs/data/cleaned_bike_theft_data.csv"
)