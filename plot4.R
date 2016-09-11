source("importData.R")
source("plotFuntions.R")

dataset <- readData()
png(width = 480, height = 480,filename = "./plot4.png")

plot.new()
par(mfrow = c(2,2))
plotGlobalActivePower(dataset, ylab = "Global Active Power")
plotVoltage(dataset)
plotEnegeySubMetering(dataset, bty = "n")# no border box
plotGlobalReactivePower(dataset)
dev.off()

