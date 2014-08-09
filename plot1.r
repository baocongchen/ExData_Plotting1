#Load data
data <- read.csv("household_power_consumption.txt", na.string="?", sep=";")

# Filter data
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

# Combine Date and Time
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), 
                          format="%d/%m/%Y %H:%M:%S")

# Open png device
png("plot1.png", width=480, height=480)

# Plot the data
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col="red")

# Turn off device
dev.off()

