download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
              "ex-data-data-household_power_consumption.zip")

unzip("ex-data-data-household_power_consumption.zip")

list.files("./")

object.size("household_power_consumption.txt")

library(data.table)
data<- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

library(dplyr)
data2 <- tbl_df(consdata)
data3 <- filter(data2, Date == "1/2/2007" | Date == "2/2/2007")

data3$Date <- as.Date(data3$Date, "%d/%m/%Y")
library(lubridate)
data3$DateTime <- paste(data3$Date, data3$Time)
data3$DateTime <- dmy_hms(DateTime) 

data3$Global_active_power <- as.numeric(data3$Global_active_power)
data3$Voltage <- as.numeric(data3$Voltage)
data3$Global_reactive_power <- as.numeric(data3$Global_reactive_power)