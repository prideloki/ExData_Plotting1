source("importData.R")
source("plotFuntions.R")

dataset <- readData()
png(width = 480, height = 480,filename = "./plot1.png")
plotHistGlobalActivePower(dataset)
dev.off()
