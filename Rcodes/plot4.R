png(file = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mfcol=c(2,2), mar = c(4, 5, 1, .5))
with(data3, {
        plot(data3$DateTime, data3$Global_active_power, 
             type = "l",
             ylab = "Global Active Power",
             xlab = "")
        
        plot(data3$DateTime, data3$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
        points(data3$DateTime, data3$Sub_metering_2, type = "l", col = "red")
        points(data3$DateTime, data3$Sub_metering_3, type = "l", col = "blue") 
        legend("topright", col = c("black", "red", "blue"), bty = "n", 
               lty = 1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        plot(data3$DateTime, data3$Voltage, 
             type = "l",
             ylab = "Voltage",
             xlab = "datetime")
        
        plot(data3$DateTime, data3$Global_reactive_power, 
             type = "l",
             ylab = "Global_reactive_power",
             xlab = "datetime")
})
dev.off() 