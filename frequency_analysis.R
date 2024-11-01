#library(descr)
library(readxl)

datas <- read_excel("./datas/06-1.xlsx")
row_stat <- apply(datas[, c(1, 3, 5, 6, 7, 8)], 1, mean)
col_stat <- apply(datas[, c(1, 3, 5, 6, 7, 8)], 2, mean)
View(row_stat)
View(col_stat)

# data <- read_excel("./datas/06-1.xlsx")
# 
# freq_area <- freq(data$SEX, plot=T)
# freq_area