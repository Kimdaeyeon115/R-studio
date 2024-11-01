# data("women")
# 
# height <- women$height / 0.3937
# weight <- women$weight /2.205
# 
# plot(height,weight,main="women height/weight",xlab="height",ylab="weight",
#      col="red",bg="blue",cex=1.5,pch=22,type="b")
# cor(height,weight)

# x<-c(-5,-4,-3,2,-1,0,1,-2,3,4,5)
# y<-3*x+2
# plot(x,y,main="f(x)",xlab = "x",ylab = "y",col="red",type = "l")

data("mtcars")
plot(mtcars$mpg, mtcars$wt)
cor(mtcars$mpg, mtcars$wt)