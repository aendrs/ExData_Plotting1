
#Code for PLOT 1



data<-read.table("C:/Users/Andres/Documents/DataScience/exploratory_data_analysis/household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE)

data$datetime<-paste(data$Date, data$Time, sep= " ")
data$unitime<-strptime(data$datetime, format="%d/%m/%Y %H:%M:%S", tz="")
data$Date <- as.Date(data$Date,"%d/%m/%Y")

subdata<-subset(data, as.Date(Date)=='2007-02-01' | as.Date(Date)=='2007-02-02'  )



# -------  Plot 1 -------

 hist(as.numeric(subdata$Global_active_power), col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power" )
dev.copy(png, file = "plot1.png", width = 480, height = 480)
 dev.off() 