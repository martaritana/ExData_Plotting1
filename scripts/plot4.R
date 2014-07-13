hpc <- read.csv("data/hpc.csv")
png(filename = "plots/plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

plot(hpc$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", xaxt="n")
axis(1, c(1, nrow(hpc) / 2, nrow(hpc)), c("Thu", "Fri", "Sat"))

plot(hpc$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt="n")
axis(1, c(1, nrow(hpc) / 2, nrow(hpc)), c("Thu", "Fri", "Sat"))

plot(hpc$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", xaxt="n", col="black")
lines(hpc$Sub_metering_2, col="red")
lines(hpc$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), pch="—", bty="n")
axis(1, c(1, nrow(hpc) / 2, nrow(hpc)), c("Thu", "Fri", "Sat"))

plot(hpc$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power", xaxt="n")
axis(1, c(1, nrow(hpc) / 2, nrow(hpc)), c("Thu", "Fri", "Sat"))

dev.off()

