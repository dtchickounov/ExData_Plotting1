png(file = "plot3.png", width = 480, height = 480, units = "px", 
    bg = "transparent")

with(data3, plot(data3$DateTime, data3$Sub_metering_1, type = "l",
                 xlab = "", ylab = "Energy sub metering"))

points(data3$DateTime, data3$Sub_metering_2, type = "l", col = "red")

points(data3$DateTime, data3$Sub_metering_3, type = "l", col = "blue") 

legend("topright", col = c("black", "red", "blue"), 
       lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()