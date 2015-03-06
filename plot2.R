plot2 <- function(dataUrl) {
  data <- read.table(dataUrl, header=TRUE, sep=";", na.strings="?", stringsAsFactors=FALSE)
  dates <- data[,"Date"]=="1/2/2007" | data[,"Date"]=="2/2/2007"
  data <- data[dates,]
  datetime <- strptime(paste(data[,"Date"],data[,"Time"]), format="%d/%m/%Y %H:%M:%S")
  png(filename="plot2.png")
  plot(x, data[,"Global_active_power"], main = "", xlab = "",
       ylab = "Global Active Power (kilowatts)", type="l")
  dev.off()
}