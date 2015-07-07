# Load and extract data
path <- "./household_power_consumption.txt"
data <- read.table(path, header=TRUE, sep=";")
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
# Transform and plot to file
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
power <- as.numeric(data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()