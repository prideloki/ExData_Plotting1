# plot 1
plotHistGlobalActivePower <- function (dataset) {
    with(
        dataset,
        hist(
            Global_active_power,
            xlab = "Global Active Power (kilowatts)",
            main = "Global Active Power",
            col = "red"
        )
    )
}

# plot 2
plotGlobalActivePower <- function(dataset, ylab) {
    with(
        dataset,
        plot(strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"),
             Global_active_power,
             xlab = "",
             ylab = ylab,
             type = "l")
    )    
}

# plot 3
plotEnegeySubMetering <- function(dataset, bty = "o" ) {
    with(
        dataset,
        plot(
            strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"),
            Sub_metering_1,
            type = "l",
            col = "black",
            xlab = "",
            ylab = "Energy sub metering"
        )
    )
    with(dataset,
         points(
             strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"),
             Sub_metering_2,
             type = "l",
             col = "red"
         ))
    
    with(dataset,
         points(
             strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"),
             Sub_metering_3,
             type = "l",
             col = "blue"
         ))
    legend(
        "topright",
        col = c("black", "red", "blue"),
        lty = 1,
        bty = bty,
        legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
    )
}

# plot 4
plotVoltage <- function(dataset) {
    with(
        dataset,
        plot(strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"),
             Voltage,
             xlab = "datetime",
             ylab = "Voltage",
             type = "l")
    )
}

# plot 4
plotGlobalReactivePower <- function(dataset) {
    with(
        dataset,
        plot(strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S"),
             Global_reactive_power,
             xlab = "datetime",
             type = "l")
    )
}