library(readxl)
excel_data1<-read_excel("./datas/06-1.xlsx")
excel_data2<-excel_data1
colnames(excel_data2)<-c("ID","GENDER","AGE","AREA","AMT_Y17","CNT_Y17","AMT_Y16","Y16_CNT")


View(excel_data2)