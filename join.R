library(readxl)
library(dplyr)

data1 <- read_excel("./datas/07-3(1).xlsx")
data2 <- read_excel("./datas/07-3(2).xlsx")

join_data3 <- full_join(data1, data2, by="ID")
View(join_data3)