readfile <- function() {
  file <- "household_power_consumption.txt"
  
  ## We will only be using data from the dates 2007-02-01 and 2007-02-02.
  ## So we may read the data from just those dates rather than reading in the
  ## entire dataset and subsetting to those dates.
  headers = read.csv(file, sep = ";", nrows = 1)
  data <- read.csv(
    file,
    sep = ";",
    na.strings = "?",
    skip = 66636,
    nrows = 2880,
    col.names = colnames(headers)
  )
  
  ## convert the Date and Time variables to Date/Time classes.
  data$DateTime = strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
  
  data
}