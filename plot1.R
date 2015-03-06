plot1 <- function(dataUrl) {
  data <- read.table(dataUrl, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
  dates <- data[,"Date"]=="1/2/2007" | data[,"Date"]=="2/2/2007"
  data <- data[dates,]
  png(filename="plot1.png")
  hist(data[,"Global_active_power"], main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
       ylab = "Frequency", col = "red")
  dev.off()
}