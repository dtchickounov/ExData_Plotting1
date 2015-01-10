png("plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
par(mar = c(5,4,4,2)+0.1, col = "black")
with(data3, plot(data3$DateTime, data3$Global_active_power, 
                 type = "l",
                 ylab = "Global Active Power (kilowatts)",
                 xlab = "datetime"))
dev.off() 