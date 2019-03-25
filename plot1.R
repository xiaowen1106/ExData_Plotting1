plot1 <- function() {
  # Loading the data
  source("readfile.R")
  data <- readfile()
  
  # Creating a PNG file with a width of 480 pixels and a height of 480 pixels.
  png(filename = "plot1.png",
      width = 480,
      height = 480)
  
  # Plotting a histogram to show the usage of Global Active Power.
  hist(
    data$Global_active_power,
    col = "red",
    main = "Global Active Power",
    xlab = "Global Active Power (kilowatts)"
  )
  
  # Shutting down the Graphic Device.
  dev.off()
}