getwd()
setwd('/users/hugh/desktop/exploratory data analysis')
s<-read.table('household_power_consumption.txt',header = T,sep=";",na.strings = '?',colClasses = 
               c('character','character','numeric','numeric','numeric','numeric',
                 'numeric','numeric','numeric'))
                                                                      
             
s1<-subset(s,Date=='1/2/2007' | Date=="2/2/2007") # subset specific days 

png(filename='plot1.png',width=480,height=480)
hist(s1[,3],col = 'red',xlab = 'Global Active Power (kilowatts)',main = 'Global Active Power')
dev.off()
  
