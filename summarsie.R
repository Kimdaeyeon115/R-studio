library(readxl)
library(dplyr)

data <- read_excel("./datas/06-1.xlsx")
#데이터 세트의 AGE 변수의 대한 평균, 중ㅇ앙값,4분위수 중 4분위값 
summarise(data, MEAN_AGE=mean(data$AGE),MEDIAN_AGE=median(data$AGE),Q4_AGE=quantile(data$AGE,1))
#데이트 세트의 AGE 변수에 대한 최대, 최소,분산,표준편차값
summarise(data, MEAN_AGE=max(data$AGE),MEDIAN_AGE=min(data$AGE),V_AGE=var(data$AGE),SD_AGE=sd(data$AGE))
#데이터 세트의 총 관측지수 
summarise(data, N=n())