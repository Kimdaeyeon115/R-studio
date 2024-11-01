# 데이터 세트에 대해 전체 사용횟수에 대한 평균,중앙값 분석,분산 표준편차 분석을
# 수행
library(readxl)
library(dplyr)
data <- read_excel("./datas/06-1.xlsx")
data <- mutate(data, T_CNT=data$Y16_CNT+data$Y17_CNT)

summarise(data, MEAN_CNT=mean(data$T_CNT),MEDIAN_CNT=median(data$T_CNT))
#summarise(data ,N=n())
# 전체 사용횟수= T_CNT=data$Y16_CNT+data$Y17_CNT
#평균 mean(dateset) ->MEAN_CNT=mean(data$T_CNT)
#중앙값 median(dateset) ->MEDIAN_CNT=median(data$T_CNT)
