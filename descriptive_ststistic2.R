library(psych)
x1<-c(1,1,2,2,2,2,2,2,2,2,3,3,4,4,5,6)
k1<-skew(x1)
k1

x2<-c(1,2,3,3,4,4,5,5,5,5,5,5,6,6)
k2<-skew(x2)
k2

x3<-c(1,2,2,3,3,3,4,4,4,4,4,5,5,5,6,6,7)
k3<-skew(x3)
k3
# x1<-c(1,2,3,3,4,4,4,4,4,4,4,4,5,5,6,7)
# k1 <- kurtosi(x1)
# k1
# 
# x2<-c(1,4,4,4,4,4,4,4,7)
# k2<-kurtosi
# k2
# 
# x3<-c(1,2,3,3,4,4,4,4,4,5,6,7)
# k3<-kurtosi(x3)
# k3

# x <- c(1,1,2,2,3,5,4,4,3,1,3,107,105,104,107,104,105,105)
# 
# min_val <- min(x)
# min_val
# 
# max_val<-max(x)
# max_val
# 
# range_val <- range(x)
# range_val
# 
# min_val <- range_val[1]
# min_val
# max_val<-range_val[2]
# max_val
# r<-range_val[2] - range_val[1]
# r
# med1 <- median(x)
# med1
# # 
# # x2 <-c (1,1,1,2,3,3,17)
# # med2<-median(x2)
# # med2
# # 
# # x3 <- c(1,1,1,2,3,3)
# # med3<-median(x3)
# # med3
# 
# quan1 <- quantile(x,probs=0.80)
# quan1
# 
# quan2 <- quantile(x,probs=0.20)
# quan2
# 
# quan <- quantile(x,probs=0)
# quan
# 
# quan <- quantile(x,probs=0.25)
# quan
# 
# quan <- quantile(x,probs=0.5)
# quan
# 
# quan <- quantile(x,probs=1)
# quan