wheredata<-read.csv(file.choose(),na.string=c(""," ","NA"),header=TRUE) 
  library(dplyr)
library(plyr)
v=wheredata$Q33_Part_1
v1=wheredata$Q33_Part_2
v2=wheredata$Q33_Part_3
v3=wheredata$Q33_Part_4
v4=wheredata$Q33_Part_5
v5=wheredata$Q33_Part_6
v6=wheredata$Q33_Part_7
v7=wheredata$Q33_Part_8
v8=wheredata$Q33_Part_9
v9=wheredata$Q33_Part_10
v10=wheredata$Q33_Part_11

vv=data.frame(v,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10)
res=ddply(vv,.(v,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10))
w=unite(res,newcol,c(v10,v9),remove=F)
w
class(w)
q=summary(w)
barplot(q)
  