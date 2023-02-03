# Set up workspace
install.packages("tidyverse")
library(tidyverse)

# Imported the raw Bike Theft data first saved in the 00-download_data.R file
# Cleaned this data to include just Report_Year, NeighbourhoodName, and Premises_Type, and to exclude 2022 reports
cleaned_bike_theft_data <- 
  readr::read_csv((here::here("inputs/data/bike_theft_raw_data.csv"))) |> 
  filter(Report_Year != "2022") |> 
  select(
    Report_Year,
    NeighbourhoodName,
    Premises_Type
  )
# Saved cleaned Bike Theft data to inputs folder
write.csv(
  x = cleaned_bike_theft_data, 
  "inputs/data/cleaned_bike_theft_data.csv"
)