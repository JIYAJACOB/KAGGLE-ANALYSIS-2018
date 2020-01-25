#1
x<-read.csv(file.choose())
c=x$Q3
z=data.frame(y)
#l=cbind(x$Q3,z)
y=summary(c)
class(y)
a=sort(y)
barplot(a,horiz = TRUE,las=2,cex.names = 0.45,width =1,xlab="No. of Kagglers",ylab="Countries",col=rainbow(length(a)),border = "white")

#2
a=read.csv(file.choose(),na.strings = c(""," ","NA"),header=TRUE)
b=a[-1,]
pp=b$Q17
pp2=na.omit(pp)
p2=summary(pp2)
p3=sort(p2,decreasing = T)
barplot(p3,las=2,col=rainbow(length(p3)))


#3
p<-read.csv(file.choose(),na.strings = c(""," ","NA"))
p1<-p$Q34_Part_1
pp<-as.numeric(as.character(p1))
a<-mean(pp,na.rm = T)

p2<-p$Q34_Part_2
p2p<-as.numeric(as.character(p2))
b<-mean(p2p,na.rm=T)

p3<-p$Q34_Part_3
p3p<-as.numeric(as.character(p3))
c<-mean(p3p,na.rm = T)

p4<-p$Q34_Part_4
p4p<-as.numeric(as.character(p4))
d<-mean(p4p,na.rm = T)

p5<-p$Q34_Part_5
p5p<-as.numeric(as.character(p5))
e<-mean(p5p,na.rm = T)

p6<-p$Q34_Part_6
p6p<-as.numeric(as.character(p6))
f<-mean(p6p,na.rm = T)


v<-c(a,b,c,d,e,f)
v1=sum(v)
v2=100-v1
v3<-c(a,b,c,d,e,f,v2)
par(xpd=TRUE)
pie(v3,clockwise = T,col = rainbow(length(v)),main = "Proportion of Time spend in a Project",radius = 0.5,labels = c("16.8%","23%","13.6%","21%","9%","11.3%","5.3%"))
legend("bottomleft",c("Gathering data","Cleaning data","Visualising data","Model Building/Model Selecton","Putting the model into production","Finding insights","Others"),fill=rainbow(length(v)),bty="n",cex=1)



