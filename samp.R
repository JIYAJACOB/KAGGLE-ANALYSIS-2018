a=read.csv(file.choose(),na.strings = c(""," ","NA"),header=TRUE)
a
b=a[-1,]
b
pp=b$Q17
pp
pp2=na.omit(pp)
pp2
p2=summary(pp2)
p2
p3=sort(p2,decreasing = T)
p3
p3
barplot(p3,las=2,col=rainbow(length(p3)))
