plot2 <- function() {
  # Loading the data
  source("readfile.R")
  data <- readfile()
  
  # Creating a PNG file with a width of 480 pixels and a height of 480 pixels.
  png(filename = "plot2.png",
      width = 480,
      height = 480)
  
  # Plotting a plot to show the usage of Global Active Power by DateTime.
  with(
    data,
    plot(
      DateTime,
      Global_active_power,
      type = "n",
      ylab = "Global Active Power (kilowatts)",
      xlab = ""
    )
  )
  lines(data$DateTime, data$Global_active_power)
  
  # Shutting down the Graphic Device.
  dev.off()
}