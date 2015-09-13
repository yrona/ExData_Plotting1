# Load Electrical Consumption Data into memory
# The raw data this routine imports may be found in
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
#
# The whole dataset is read into the memory, then subset by the two dates we care about.
# NB:  The date format in the dataset is d/m/yyyy and thus Feb 1 2007 is 1/2/2007!
#
#

load_EC_data <- function ( filepath ) {
  #
  # 
  
  raw_EC_data <- read.csv(filepath, sep=";", na.strings = c("?"))
  
  interesting_EC_data <- subset(raw_EC_data,Date=="1/2/2007" | Date=="2/2/2007")
  
  #my.returned.frame <- data.frame()
  my.returned.frame <- data.frame(as.Date(interesting_EC_data$Date,"%d/%m/%Y"),
                                  strptime( paste(interesting_EC_data$Date,interesting_EC_data$Time,sep = " "), "%d/%m/%Y %T" ))
  
  colnames(my.returned.frame) <- c("Date","DateTime")
  
  my.returned.frame$Global_active_power <- interesting_EC_data$Global_active_power
  my.returned.frame$Global_reactive_power <- interesting_EC_data$Global_reactive_power
  my.returned.frame$Voltage <- interesting_EC_data$Voltage
  my.returned.frame$Global_intensity <- interesting_EC_data$Global_intensity
  my.returned.frame$Sub_metering_1 <- interesting_EC_data$Sub_metering_1
  my.returned.frame$Sub_metering_2 <- interesting_EC_data$Sub_metering_2
  my.returned.frame$Sub_metering_3 <- interesting_EC_data$Sub_metering_3
  
  return ( my.returned.frame)
}