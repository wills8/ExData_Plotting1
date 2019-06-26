# John Hopkins Exploratory Data Analysis Project 1
# Data Source: UC Irvine Machine Learning Repository
# Data Title: Electric Power Consumption

# PLOT 2

# Read data in and subset data
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

# Convert time and date data
dateTime <- strptime(paste(subData$Date, subData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")


# Create lilne graph and png file 
attach(subData)
png("plot2.png", height = 480, width = 480)
plot(dateTime, Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",
                type = "l")
dev.off()