rm(list=ls())
data<-read.csv('household_power_consumption.txt',head=T,sep=";",na.string="?",stringsAsFactor=FALSE)
data_sub<-subset(data,Date%in%c('1/2/2007','2/2/2007'))
png("plot1.png")
with(data_sub,hist(data_sub$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (kilowatts)'))
dev.off()

