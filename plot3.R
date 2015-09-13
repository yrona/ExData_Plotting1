# Usage:  plot3( filepath = character string to source data )
#
# Will produce a plot named plot3.png that is 480 X 480 with a chart
# of the three Sub Metering traces as a function of time
#
# Requirements:
#   load_EC_data.R must be sourced prior to executing the function.
#                   The file may be found in the same repository
#                   as this function


plot3 <- function( filepath) {
  my.data <- load_EC_data(filepath)
  
  png("plot3.png",width = 480,height = 480, units = "px")
  
  plot(my.data$DateTime,
       my.data$Sub_metering_1, 
       type = "l", 
       xlab = "", 
       ylab = "Energy sub metering",
       col="black")
  
  lines(my.data$DateTime,my.data$Sub_metering_2, type = "l" , col = "red")
  lines(my.data$DateTime,my.data$Sub_metering_3, type = "l" , col = "blue")
  
  legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
  dev.off()
}