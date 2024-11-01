# a <- 10
# b <- 20
# 
# if(a>b){
#   print("a가 더 큼!")
# } else if(a<b) {
#   print("b가 더 ")
# }else{
#   print("같음!")
# }
# print("프로그램 종료")

vec1 <- c(11,13,21,31,51,69)
val = ifelse(vec1 >= 10 & vec1 < 20,"10대",
             ifelse(vec1 >= 20 & vec1 < 30,"20대",
                    ifelse( vec1 >= 30& vec1 < 40,"30대","40대 이상")))
vec1
val
