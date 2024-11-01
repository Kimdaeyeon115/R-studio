#데이터 시트에 대해 지역별로 그룹을 생성하고 각 그룹별로 금액에 대한
#평균, 중앙값,합계,표준편차를 데이터로 요약하시오
library(readxl)
library(moments)
library(dplyr)
data <- read_excel("./datas/06-1.xlsx")
data_set <- mutate(data, CNT_T=(AMT16 + AMT17)/2)
d_dataset <- group_by(data_set, AREA)
d_dataset
summarise(d_dataset, MEAN_AMT=mean(CNT_T), MEDIAN_AMT=median(CNT_T)
          , SUM_AMT=sum(CNT_T), SD_AMT=sd(CNT_T))

# 그룹별로 금액에 대한 data_set<-mutate(data, CNT_T=(AMT16 + AMT17)/2)
# 그룹을 생성<- d_dataset <- group_by(data_set, AREA)
# 
# 평균mean 중앙값median 합계sum 표준편파sd 요약(summarise())