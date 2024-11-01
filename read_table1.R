#ID <- c(1,2,3,4,5)
#GENDER <- c("F","M","F","M","F")
#data_ex <- data.frame(ID=ID, GENDER=GENDER)
#save(data_ex, file= "./datas/data.rda")
#save(data_ex, file= "./datas/data.bigdata")

#load("./datas/data.rda")
#View(data_ex)
# 
# data05_3 <- read.table("./datas/05-3.txt", header= TRUE)
# View(data05_3)

# age <-14
# height <- 130
# result <- age>=13 & age<65 & height >= 120
# result

vec1 <- c(1,2,3,4,5,3,9,12,0,1)
vec2 <- c(1,1,2,2,5,6,10,1,10,3)
#scalar <- 3 #scalar <-c(2)
vec1
vec2
result <- vec1+vec2
result
vec
result <- vec1-vec2
result
vec
result <- vec1*vec2
result
vec
result <- vec1/vec2
result
vec
result <- vec1%/%vec2
result
vec
result <- vec1%%vec2
result
vec
result <- vec1>vec2
result
vec
result <- vec1<vec2
result
vec
result <- vec1==vec2
result
vec
result <- vec1!=vec2
result