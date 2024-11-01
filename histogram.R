library(readxl)
library(RColorBrewer)
library(psych)
# 
# datas<-read_excel("./datas/06-1.xlsx")
# color <- rainbow(10)
# hist(datas$AGE, main="Age Group Histogram", ylim=c(0,5),xlab="Age Group",ylab="Person(s)",col=color)
# 
# mean(quakes$mag)
# sd(quakes$mag)
# kurtosi(quakes$mag)
# skew(quakes$mag)
# 
# data("quakes")

color<-rainbow(5)

# n<-length(quakes$mag)
# bin <- ceiling(sqrt(n))
# bin <- ceiling(1+3.3*log(n))
# bin <- ceiling(2*n**(1/3))

# hist(quakes$mag,main="FIJI Quakes HistoGram",xlim=c(4.0,7.0),xlab="intensity", 
#      ylab="probability denstiy",col=color,breaks=seq(4.0,6.5,by=0.1),freq = TRUE)
# lines(density(quakes$mag),lwd=2)

datas<-c(1,2,3,4,4,5,6,7,10,11,12,15,40,30,100)
boxplot(datas, main="Test Data Box Plot",xlab="test data",ylab="value",col=color)