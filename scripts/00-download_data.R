# download Bike Theft data from Open Data Toronto

install.packages("opendatatoronto")
install.packages("tidyverse")
library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("c7d34d9b-23d2-44fe-8b3b-cd82c8b38978")
package
# get all resources for this package
resources <- list_package_resources("c7d34d9b-23d2-44fe-8b3b-cd82c8b38978")
# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
# load the first datastore resource as a sample
bike_theft_raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()
bike_theft_raw_data

write.csv(
  x = bike_theft_raw_data, 
  "/cloud/project/inputs/data/bike_theft_raw_data.csv"
)