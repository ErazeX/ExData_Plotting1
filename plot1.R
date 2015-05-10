power <- read.csv("~/R working/household_power_consumption.txt", sep=";",stringsAsFactors = FALSE)
power$Date <- as.Date(power$Date,format = "%d/%m/%Y")
graphdata <- power[power$Date >= as.Date("2007/2/1") & power$Date <= as.Date("2007/2/2"),]
graphdata$Global_active_power <- as.numeric(graphdata$Global_active_power)
png(filename="~/R working/plot1.png",width=480,height=480)
hist(graphdata$Global_active_power,main="Global Active Power",ylab="Frequency", xlab="Global Active Power (Kilowatts)",col="red",)
dev.off()
