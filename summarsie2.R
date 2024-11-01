library(readxl)
data <- read_excel("./datas/06-1.xlsx")

data<-group_by(data, SEX)

data

summarise(data, MEAN_AGE=mean(AGE),MEDIAN_AGE=median(AGE),Q4_AGE=quantile(AGE,1))
#데이트 세트의 AGE 변수에 대한 최대, 최소,분산,표준편차값
summarise(data, MEAN_AGE=max(AGE),MEDIAN_AGE=min(AGE),V_AGE=var(AGE),SD_AGE=sd(AGE))
#데이터 세트의 총 관측지수 
summarise(data, N=n())