library(dataRetrieval)

# Example: Retrieve daily streamflow data for a USGS site
# Site 01491000 - Choptank River near Greensboro, MD
siteNumber <- "01491000"
parameterCd <- "00060"  # Discharge, cubic feet per second
startDate <- "2020-01-01"
endDate <- "2020-12-31"

discharge <- readNWISdv(siteNumber, parameterCd, startDate, endDate)

print(head(discharge))
