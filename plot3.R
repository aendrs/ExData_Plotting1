
#Code for PLOT 3



data<-read.table("C:/Users/Andres/Documents/DataScience/exploratory_data_analysis/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE)

data$datetime<-paste(data$Date, data$Time, sep= " ")
data$unitime<-strptime(data$datetime, format="%d/%m/%Y %H:%M:%S", tz="")
data$Date <- as.Date(data$Date,"%d/%m/%Y")

subdata<-subset(data, as.Date(Date)=='2007-02-01' | as.Date(Date)=='2007-02-02'  )




 # ------- Plot 3 -------


 with(subdata, plot(unitime, Sub_metering_1, type="l", ylim=c(0,40), xlab="",ylab=""))
 par(new=T)
 with(subdata, plot(unitime, Sub_metering_2, type="l", col="red",axes=F,ylim=c(0,40), xlab="",ylab=""))
 par(new=T)
 with(subdata, plot(unitime, Sub_metering_3, type="l", col="blue",axes=F,ylim=c(0,40),xlab="",ylab=""))

legend("topright", pch = "____", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
title(ylab="Energy Sub Metering")

 dev.copy(png, file = "plot3.png", width = 480, height = 480)
 dev.off() 
