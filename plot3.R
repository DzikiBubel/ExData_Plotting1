plot3 <- function(dataUrl) {
  data <- read.table(dataUrl, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
  dates <- data[,"Date"]=="1/2/2007" | data[,"Date"]=="2/2/2007"
  data <- data[dates,]
  datetime <- strptime(paste(data[,"Date"],data[,"Time"]), format="%d/%m/%Y %H:%M:%S")
  png(filename="plot3.png")
  plot(x, data[,"Sub_metering_1"], main = "", xlab = "", ylab = "Energy sub metering", type="l")
  lines(x, data[,"Sub_metering_2"], col="red")
  lines(x, data[,"Sub_metering_3"], col="blue")
  legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
         col=c("black","red","blue"), lwd=1)
  dev.off()
}