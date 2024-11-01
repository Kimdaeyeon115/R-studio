# library(readxl)
# matter_datas = read_excel("./datas/matter.xlsx")
# barplot(matter_datas$MAX_VAL, names.arg = matter_datas$AREA,horiz=TRUE
#        ,col=color, main = "지역별 미세먼지 수치",xlab="지역",ylab="농도")

library(RColorBrewer)

data("VADeaths")
names <- rownames(VADeaths)
color <- brewer.pal(4,name="Set1")
trans_data = t(VADeaths)
barplot(trans_data,names.arg = names,main="Death Rates in Virgina",
        ylab="rate",col=color,beside = TRUE)
legend("topleft",legend = colnames(VADeaths),fill=color,cex = 0.8)