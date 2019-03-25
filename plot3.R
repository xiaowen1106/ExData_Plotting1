plot3 <- function() {
  # Loading the data
  source("readfile.R")
  data <- readfile()
  
  # Creating a PNG file with a width of 480 pixels and a height of 480 pixels.
  png(filename = "plot3.png",
      width = 480,
      height = 480)
  
  # Plotting a plot to show the energy usage by DateTime for each sub-metering.
  with(
    data,
    plot(
      DateTime,
      Sub_metering_1,
      type = "l",
      ylab = "Energy sub metering",
      xlab = ""
    )
  )
  lines(data$DateTime, data$Sub_metering_2, col = "red")
  lines(data$DateTime, data$Sub_metering_3, col = "blue")
  legend(
    "topright",
    lty = 1,
    col = c("black", "red", "blue"),
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  )
  
  # Shutting down the Graphic Device.
  dev.off()
}