library("data.table")

readData <- function() {
    fileUrl <-
        "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    
    dest <- "./data/household_power_consumption.zip"
    if (!dir.exists("./data")) {
        dir.create("data")
    }
    if (!file.exists(dest)) {
        download.file(url = fileUrl, destfile = dest)
    }
    fileDest <- "./data/household_power_consumption.txt"
    if (!file.exists(fileDest)) {
        unzip(dest, exdir = "./data")    
    }
    powerConsumption <-
        fread(fileDest,
              na.strings = c("?"),
              data.table = TRUE)
    dataset <- powerConsumption[Date == "1/2/2007" |
                                    Date == "2/2/2007"]
    return (dataset)
}

