# Usage:  plot4( filepath = character string to source data )
#
# Will produce a plot named plot4.png that is 480 X 480 with 4 charts
#
# Requirements:
#   load_EC_data.R must be sourced prior to executing the function.
#                   The file may be found in the same repository
#                   as this function

plot4 <- function( filepath) {
  my.data <- load_EC_data(filepath)
  
  png("plot4.png",width = 480,height = 480, units = "px")

  #Define our output to be a 2x2 grid
  par(mfrow=c(2,2))
  
  #Plot 1 Global Active Power
  plot(my.data$DateTime,
       my.data$Global_active_power, 
       type = "l", 
       xlab = "", 
       ylab = "Global Active Power (kilowatts)")
  
  #Plot 2 Voltage
  plot(my.data$DateTime,
       my.data$Voltage, 
       type = "l", 
       xlab = "", 
       ylab = "Voltage")
  
  
  #Plot 3 Sub metering w/ legend that is unbordered
  plot(my.data$DateTime,
       my.data$Sub_metering_1, 
       type = "l", 
       xlab = "", 
       ylab = "Energy sub metering",
       col="black")
  
  lines(my.data$DateTime,my.data$Sub_metering_2, type = "l" , col = "red")
  lines(my.data$DateTime,my.data$Sub_metering_3, type = "l" , col = "blue")
  
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"), bty = "n")

  #Plot 4 Reactive Power
  plot(my.data$DateTime,
       my.data$Global_reactive_power, 
       type = "l", 
       xlab = "", 
       ylab = "Global Reactive Power (kilowatts)")
  
  #Write output to disk
  dev.off()
}