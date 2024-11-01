library(readxl)
library(RColorBrewer)

datas<-read_excel("./datas/06-1.xlsx")
color<-rainbow(5)

boxplot(datas$ID,datas$AGE,main="Lecture Data Box Plot",names=c("ID","AGE")
        ,col=color)