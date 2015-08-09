data <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, na.strings = "?")
datasubset <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
date.time <- strptime(paste(datasubset$Date, datasubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot2.png", width = 480, height = 480)
plot(date.time, datasubset$Global_active_power, xlab="", ylab="Global active power (kilowatts)", type="l")
dev.off()