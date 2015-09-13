# Usage:  plot2( filepath = character string to source data )
#
# Will produce a plot named plot2.png that is 480 X 480 with a chart
# showing the trace of Global Active Power as a function of time
#
# Requirements:
#   load_EC_data.R must be sourced prior to executing the function.
#                   The file may be found in the same repository
#                   as this function


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