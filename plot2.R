getwd()
setwd('/users/hugh/desktop/exploratory data analysis')
s=read.table('household_power_consumption.txt',header = T,sep=";",na.strings = '?',colClasses = 
               c('character','character','numeric','numeric','numeric','numeric',
                 'numeric','numeric','numeric'))
s1<-subset(s,Date=='1/2/2007' | Date=="2/2/2007")  #subset specific days 

dateTime<-as.POSIXlt(paste(as.Date(s1$Date, format="%d/%m/%Y"), s1$Time, sep=" "))

png(filename='plot2.png',width=480,height=480)
plot(dateTime,s1$Global_active_power,xlab='',ylab='Global Active Power (Kilowatts)',type='l')
dev.off()


