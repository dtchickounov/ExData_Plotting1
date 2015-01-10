png("plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mar = c(5,4,3,2)+0.1)
hist(data3$Global_active_power, col = "red",  
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off() 