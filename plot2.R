plot2 <- function( filepath) {
  my.data <- load_EC_data(filepath)
  
  png("plot2.png",width = 480,height = 480, units = "px")
  
  plot(my.data$DateTime,
       my.data$Global_active_power, 
       type = "l", 
       xlab = "", 
       ylab = "Global Active Power (kilowatts)")
  
  dev.off()
}