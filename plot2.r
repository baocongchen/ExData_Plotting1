#Set time
Sys.setlocale("LC_TIME", "English")
#Load Data
data <- read.csv("household_power_consumption.txt",na.string="?",sep=";")

#Filter Data
data <- data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]

#Combine Date and Time 
data$DateTime <- strptime(paste(data$Date, data$Time, sep=" "), format ="%d/%m/%Y %H:%M:%S")

#Open png device
png("plot2.png", width=480, height=480)

#Plot the data
plot(data$DateTime, data$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")

#Turn off png device
dev.off()

