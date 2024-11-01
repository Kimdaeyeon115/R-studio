#2016년도 구매액과2017년도 구매액을 누적 막대그래프로 나타내라
library(readxl)
library(dplyr)
library(RColorBrewer)
options("scipen"=100)
color<- rainbow(10)
data<- read_excel("./datas/06-1.xlsx")
# data<- mutate(data,SUM_AMT17=data$AMT17,SUM_AMT16=data$AMT16)
data <- group_by(data,AREA)
data
AMT_Data<-summarise(data,AMT16=sum(AMT16),AMT17=sum(AMT17))
names <- AMT_Data$AREA
names
AMT_Data <- AMT_Data[,2:3]
AMT_Data$AMT16 <- as.numeric(AMT_Data$AMT16)
AMT_Data$AMT17 <- as.numeric(AMT_Data$AMT17)
AMT_Data<- as.matrix(AMT_Data)
rownames(AMT_Data)<-names
AMT_Data
# T_AMT17<-sum(data$AMT17)
# T_AMT16<-sum(data$AMT16)
# data<-T_AMT16
# summarise(data,mean_CNT=mean(data$T_CNT),median_CNT=median(data$T_CNT))
# summarise1<-c(sum(data$AMT17),sum(data$AMT16))
# summarise1
# summarise2<-c(sum(data$AMT16))
barplot(AMT_Data,width=2,names.arg=colnames(AMT_Data),main="2016년2017년 누적지출금액",
        xlab="년도", ylab="금액",col=color,beside=FALSE)
legend("topleft",legend=rownames(AMT_Data),fill=color,cex=0.8)
#data$SUM_AMT16
