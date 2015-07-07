# Load and extract data
path <- "./household_power_consumption.txt"
#data <- read.table(path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
data <- read.table(path, header=TRUE, sep=";")
data <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
# Trasnform and plot to file
power <- as.numeric(data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()