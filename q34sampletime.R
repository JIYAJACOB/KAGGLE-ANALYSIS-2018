p<-read.csv(file.choose(),na.strings = c(""," ","NA"))
p
p1<-p$Q34_Part_1
pp<-as.numeric(as.character(p1))
a<-mean(pp,na.rm = T)
a
p2<-p$Q34_Part_2
p2p<-as.numeric(as.character(p2))
b<-mean(p2p,na.rm=T)
b
p3<-p$Q34_Part_3
p3p<-as.numeric(as.character(p3))
c<-mean(p3p,na.rm = T)
c
p4<-p$Q34_Part_4
p4p<-as.numeric(as.character(p4))
d<-mean(p4p,na.rm = T)
d
p5<-p$Q34_Part_5
p5p<-as.numeric(as.character(p5))
e<-mean(p5p,na.rm = T)
e
p6<-p$Q34_Part_6
p6p<-as.numeric(as.character(p6))
f<-mean(p6p,na.rm = T)
f
v1=sum(v)
v1
v2=100-v1
v2
v<-c(a,b,c,d,e,f,v2)
v
par(xpd=TRUE)
pie(v,clockwise = T,col = rainbow(length(v)),main = "Proportion of Time spend in a Project",radius = 0.7,labels = c("16.8%","23%","13.6%","21%","9%","11.3%","5.3%"))
legend("bottomleft",c("Gathering data","Cleaning data","Visualising data","Model Building/Model Selecton","Putting the model into production","Finding insights","Others"),fill=rainbow(length(v)),bty="n",cex=1)
