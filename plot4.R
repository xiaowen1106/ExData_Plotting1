plot4 <- function() {
  # Loading the data
  source("readfile.R")
  data <- readfile()
  
  # Creating a PNG file with a width of 480 pixels and a height of 480 pixels.
  png(filename = "plot4.png",
      width = 480,
      height = 480)
  
  # Configuring the graphic device with 2 x 2 grids.
  par(mfcol = c(2, 2))
  
  # Plotting the global active ernergy by datetime.
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
  
  # Plotting the energy usage by DateTime for each sub-metering.
  with(
    data,
    plot(
      DateTime,
      Sub_metering_1,
      type = "n",
      ylab = "Energy sub metering",
      xlab = ""
    )
  )
  lines(data$DateTime, data$Sub_metering_1)
  lines(data$DateTime, data$Sub_metering_2, col = "red")
  lines(data$DateTime, data$Sub_metering_3, col = "blue")
  legend(
    "topright",
    lty = 1,
    col = c("black", "red", "blue"),
    legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  )
  
  # Plotting the voltage by datetime.
  with(
    data,
    plot(
      DateTime,
      Voltage,
      type = "n",
      ylab = "Voltage",
      xlab = "datetime"
    )
  )
  lines(data$DateTime, data$Voltage)
  
  # Plotting the gloabl reactive power by datetime.
  with(
    data,
    plot(
      DateTime,
      Global_reactive_power,
      type = "n",
      ylab = "Global_reactive_power",
      xlab = "datetime"
    )
  )
  lines(data$DateTime, data$Global_reactive_power)
  
  # Shutting down the Graphic Device.
  dev.off()
}