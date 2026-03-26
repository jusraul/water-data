install.packages("dataRetrieval")
library(dataRetrieval)

# Retrieve USGS water data stations (sites) for a state (e.g., California)
sites <- whatNWISsites(stateCd = "CA", siteType = "ST")
head(sites)

# Retrieve daily streamflow data for a specific site
# USGS site 11446500 - American River at Fair Oaks, CA
siteNumber <- "11446500"
parameterCd <- "00060"  # Discharge in cubic feet per second
startDate <- "2023-01-01"
endDate <- "2023-12-31"

discharge_data <- readNWISdv(siteNumber, parameterCd, startDate, endDate)
print(discharge_data)
