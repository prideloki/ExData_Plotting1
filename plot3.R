source("importData.R")
source("plotFuntions.R")

dataset <- readData()
plot.new()
png(width = 480, height = 480,filename = "./plot3.png")
plotEnegeySubMetering(dataset)
dev.off()
