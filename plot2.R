source("importData.R")
source("plotFuntions.R")

dataset <- readData()
png(width = 480, height = 480,filename = "./plot2.png")
plotGlobalActivePower(dataset, ylab = "Global Active Power (kilowatts)")
dev.off()
