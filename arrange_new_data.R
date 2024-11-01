library(readxl)
library(dplyr)
exdata1 <- read_excel("./datas/06-1.xlsx")

exdata2 <- exdata1
colnames(exdata2) <- c("ID","SEX","AGE","AREA","Y17_AMT","Y17_CNT","Y16_AMT","Y16_CNT")

exdata2$AMT <- exdata2$Y16_AMT + exdata2$Y17_AMT
exdata2$CNT <- exdata2$Y16_CNT + exdata2$Y17_CNT
exdata2$AVG_AMT <- exdata2$AMT / exdata2$CNT


exdata2$AGE50_YN <- ifelse(exdata2$AGE >= 50,"Y","N")
exdata2$AGE_GR <- ifelse(exdata2$AGE >= 50,"50대",
                         ifelse(exdata2$AGE >= 40,"40대",
                         ifelse(exdata2$AGE >= 30,"30대",
                         ifelse(exdata2$AGE >= 20,"20대","10대"))))
exdata2$AGE_Y <- exdata2$AMT/2
exdata2$AGE_C <- exdata2$CNT/2

exdata2$SEX <- ifelse(exdata2$SEX == "M","남자","여자")
#AGE_YCNT <- exdata2$Y16_CNT/12

exdata2$AVG_AMT <-ifelse(exdata2$AVG_AMT>= 100000,"VIP",
                         ifelse(exdata2$AVG_AMT>=50000,"NORMAL","DANGER"))
                                
View(exdata2)

#View(AGE_Y16_AMT)

exdata3 <- rename(exdata1, CNT=Y17_CNT, CNT16=Y16_CNT)
#a <-Y17_CNT+