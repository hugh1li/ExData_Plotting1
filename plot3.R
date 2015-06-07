getwd()
setwd('/users/hugh/desktop/exploratory data analysis')
s=read.table('household_power_consumption.txt',header = T,sep=";",na.strings = '?',colClasses = 
               c('character','character','numeric','numeric','numeric','numeric',
                 'numeric','numeric','numeric'))
s1<-subset(s,Date=='1/2/2007' | Date=="2/2/2007")  #subset specific days 

dateTime<-as.POSIXlt(paste(as.Date(s1$Date, format="%d/%m/%Y"), s1$Time, sep=" "))

png(filename='plot3.png',width=480,height=480)
plot(dateTime,s1$Sub_metering_1,xlab='',ylab='Energy sub metering',type='l')
lines(dateTime,s1$Sub_metering_2,col='red')
lines(dateTime,s1$Sub_metering_3,col='blue')
legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=c(1,1,1),
       lwd=c(2.5,2.5,2.5),
       col=c('black','red','blue'))

dev.off()
