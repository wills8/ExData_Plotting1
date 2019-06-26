# John Hopkins Exploratory Data Analysis Project 1
# Data Source: UC Irvine Machine Learning Repository
# Data Title: Electric Power Consumption

# PLOT 1

# Read data in and subset data
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
subData <- data[data$Date %in% c("1/2/2007", "2/2/2007"), ]

# Create histogram and png file of Global Active Power 
attach(subData)
png("plot1.png", height = 480, width = 480)
hist(Global_active_power, xlab = "Global Active Power (kilowatts)", 
                main = "Global Active Power", 
                col = "Red")
dev.off()