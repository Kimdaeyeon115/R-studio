# 데이터 세트에 대해 개인별 1회 평균 사용금액에 대한 대표값 분석, 분포 분석을 수행

library(readxl)
library(dplyr)
data<-read_excel("./datas/06-1.xlsx")
data<- mutate(data,CNT_OVERAGE=(AMT16 + AMT17)/2)
summarise(data, MEAN_CNT=mean(data$CNT_OVERAGE),MEDIAN_CNT=median(data$CNT_OVERAGE))

# 개인별 1회 평균 사용금액<-data<- mutate(data,CNT_OVERAGE=(AMT16 + AMT17)/2)
# 대표값=평균 <-MEAN_CNT=mean(data$CNT_OVERAGE)
# 분석 분포 =분산,표준편차= 중앙값 <-MEDIAN_CNT=median(data$CNT_OVERAGE)