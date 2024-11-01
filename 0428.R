library(readxl)
library(dplyr)

datas <- read_excel("./datas/sidoAirInfo.xls")
datas_for_area = read_excel("./datas/sidoAirInfo.xls",
                            col_names = c("","","","","","","","","","","","","","","","","",""))

area <- datas_for_area[1,2:18]
area <- t(area)
datas <- datas[,2:18]
datas <- t(datas)
matter_datas <- datas
matter_mean_datas <- apply(matter_datas,1, mean)

datas <- cbind(area,matter_mean_datas)
colnames(datas) <- c("AREA","MATTER")

location <- read_excel("./datas/location.xlsx")
datas <- as.data.frame(datas)
location <-as.data.frame(location)
datas <- inner_join(datas,location,by="AREA")
#View(datas)

plot(x=as.numeric(datas$LONGITUDE), y=as.numeric(datas$LATITUDE),
     pch=19, cex=as.numeric(datas$MATTER)*0.5,
     col=rgb(1,0,0,0.3),
     xlim=c(126, 130), ylim=c(35, 38),
     xlab="경도", ylab="위도")