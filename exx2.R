#mtcars 데이터 세트에서 연비에 대한 도수 분포 상태를 히트토그램과
#확률질량함수로 그려보고 분석
library(RColorBrewer)
color<-rainbow(10)

data("mtcars")

# plot(mtcars$mpg,mtcars$wt)
# cor(mtcars$mpg,mtcars$wt)

hist(data$mpg,main="연비에대한 도수 분포상태",xlab="연비",col=color)