data <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")
datasubset <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
date.time <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width = 480, height = 480)
plot(date.time, datasubset$Sub_metering_1, xlab = "", ylab = "Energy submetering", type = "l")
lines(date.time, datasubset$Sub_metering_2, col = "red")
lines(date.time, datasubset$Sub_metering_3, col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, lwd = 2, col=c("black", "red", "blue"))
dev.off()