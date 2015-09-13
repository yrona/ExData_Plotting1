plot4 <- function( filepath) {
  my.data <- load_EC_data(filepath)
  
  png("plot4.png",width = 480,height = 480, units = "px")

  par(mfrow=c(2,2))
  
  plot(my.data$DateTime,
       my.data$Global_active_power, 
       type = "l", 
       xlab = "", 
       ylab = "Global Active Power (kilowatts)")
  
  plot(my.data$DateTime,
       my.data$Voltage, 
       type = "l", 
       xlab = "", 
       ylab = "Voltage")
  

  plot(my.data$DateTime,
       my.data$Sub_metering_1, 
       type = "l", 
       xlab = "", 
       ylab = "Energy sub metering",
       col="black")
  
  lines(my.data$DateTime,my.data$Sub_metering_2, type = "l" , col = "red")
  lines(my.data$DateTime,my.data$Sub_metering_3, type = "l" , col = "blue")
  
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))

  plot(my.data$DateTime,
       my.data$Global_reactive_power, 
       type = "l", 
       xlab = "", 
       ylab = "Global Reactive Power (kilowatts)")
  
  dev.off()
}