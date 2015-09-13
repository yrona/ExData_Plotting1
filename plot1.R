# Usage:  plot1( filepath = character string to source data )
#
# Will produce a histogram named plot1.png that is 480 X 480 tabulating
# the number of observations that fit into various buckets.
#
# Requirements:
#   load_EC_data.R must be sourced prior to executing the function.
#                   The file may be found in the same repository
#                   as this function


plot1 <- function( filepath) {
  my.data <- load_EC_data(filepath)
  
  png("plot1.png",width = 480,height = 480, units = "px")
  
  hist(my.data$Global_active_power, 
       col = "red", 
       main = "Global Active Power",
       xlab = "Global Active Power (kilowatts)")
  
  dev.off()
}
  