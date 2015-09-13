plot1 <- function( filepath) {
  my.data <- load_EC_data(filepath)
  
  png("plot1.png",width = 480,height = 480, units = "px")
  
  hist(my.data$Global_active_power, 
       col = "red", 
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)")
  
  dev.off()
}
  