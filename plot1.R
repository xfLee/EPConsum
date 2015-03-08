epc <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
library(dplyr)
gap1 <- filter(epc, epc$Date == "1/2/2007")
gap2 <- filter(epc, epc$Date == "2/2/2007")
gap <- rbind(gap1, gap2)
hist(as.numeric(gap$Global_active_power) / 1000, col = "red", 
     main = "Global Active Power", xlab = "Global Active Power(kilowatts)")