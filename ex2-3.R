#mtcars 데이터 세트에서 연비에대한 도수 분표상태를 히스토그램과 확률질량함수로
#그려보고 분석
library(readxl)
library(dplyr)
library(RColorBrewer)

data("mtcars")
#color <
hist(mtcars$mpg)
# plot(mtcars$mpg, mtcars$wt)
# cor(mtcars$mpg, mtcars$wt)