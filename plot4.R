# John Hopkins Exploratory Data Analysis Project 1
# Data Source: UC Irvine Machine Learning Repository
# Data Title: Electric Power Consumption

# PLOT 4

# Read data in and subset data
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

# Convert time and date data
dateTime <- strptime(paste(subData$Date, subData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


# Create graphs and png file
attach(subData)
png("plot4.png", height = 480, width = 480)
par(mfrow = c(2,2))

plot(dateTime, Global_active_power, type = "l", ylab = "Global Active Power")

plot(dateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(dateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(dateTime, Sub_metering_2, type = "l", col = "red")
lines(dateTime, Sub_metering_3, type = "l", col = "blue")
legend  ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         lty = 1,
         col = c("black", "red", "blue"),
         bty = "n")

plot(dateTime, Global_reactive_power, type = "l", ylab = "Global_reactive_power",
        xlab = "datetime")

dev.off()
