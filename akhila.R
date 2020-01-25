3*4
x<-1:20
y<-20:1
x
y
label<-1:30
paste("label",label)
x<-c("the quick brown fox jumps over the lazy dog")
x
sub("brown","red",x)
substr(x,start = 17,stop = 19)
b<-5
h<-4
2*(b+h)
x<-1:20
y<-19:1
m<-c(x,y)
m
x<-c(4,6,3)
rep(x,10)
rep(x,time=11,length.out=31,each=1)
rep(x,c(10,20,30))
R<-c(2.27,1.98,1.69,1.88,1.64,2.14)
H<-c(8.28,8.04,9.06,8.70,7.58,8.34)
v=1/3*R*H
v
x<-round(v,digits = 2)
x
min(x)
max(x)
a<-sample(0:999,250)
a
s<-a[which(a>900)]
s
sort(s)
H<-c(180,165,160,193)
W<-c(87,58,65,100)
he<-H/100
he
bm<-W/(he*he)
bm
bmi<-round(bm,digits = 2)
bmi
v<-bmi[which(bmi>25)]
v
mean(bmi)
c<-sample(1:50,10)
c
p1<-mean(c)
p1
p2<-median(c)
p2
n<-sample(1:20,10,replace = T)
n
a<-n[which(n%%2==0)]
a
stud<-list(sname="akhila",roll=3,gender="f",mark=c(45,50,49,42,47))
stud
c<-mean(stud[[4]])
c
d<-stud[c(2,4)]
d
stud[[4]][5]=100
stud
c<-c("a","b","c","d","e")
c
d<-list(stud,c)
d
c<-matrix(1:4,2)
c
b=2*c
b
A<-matrix(c(1,1,3,5,2,6,-2,-1,-3),nrow = 3,ncol = 3,byrow = T)
A
A%*%A%*%A
B<-matrix(c(10,-10,10),nrow = 15,ncol = 3,byrow = F)
B
t(B)%*%B
x<-matrix(c(1:15),nrow = 3,ncol = 5,byrow = F)
x
dimnames(x)<-list(c("Alice","Bill","sara"),c("p1","p2","p3","p4","p5"))
x
mean(x[,1:5])
category<-factor("pr1","pr2","pr3")
category
age<-c(25,31,23)
height<-c(177,163,190)
weight<-c(57,69,53)
sex<-c("F","F","M")
x<-data.frame(age,height,weight,sex)
x
row.names(x)=c("Alex","lilly","mark")
x
mean(height)
ht=height/100
ht
bmi<-weight/(ht*ht)
bmi
data.frame(x,bmi)
v<-bmi<25
v
data.frame(x,bmi,v)
x<-array(1:20,c(2,3,3),dimnames =list(letters[1:2],LETTERS[1:3],c("a","b","c")))
x
sub<-function(a,b)
{
 return(a-b) 
}
sub(4,2)
m<-function(a,b)
{
  return(a/b)
}
m(4,2)
x<-c(8,4,5,3)
x
pie(x,labels = x,clockwise = T,col=rainbow(length(x)),main = "movie")
legend("topleft",c("c","a","r","s"),fill=rainbow(length(x)))

barplot(x,names.arg = c("c","a","r","s"),main = "movie",col=rainbow(length(x)),xlab = "movie",ylab = "friends")
legend("topright",c("c","a","r","s"),fill =rainbow(length(x)) )

x<-matrix(1:12,3,4)
x
barplot(x,names.arg = c("1q","2q","3q","4q"),main = "sale",col = rainbow(length(x)),xlab = "quarters",ylab = "sales")
legend("topleft",c("a","b","c"),fill=rainbow(length(x)))
mtcars
x<-mtcars$mpg
x
hist(x,xlab = "mpg",ylab = "carmodel",col='blue')
plot.new()
plot.window(xlim = c(0,10),ylim = c(0,10))
axis(1)
axis(2)
abline(h=0)
abline(v=0)
x<-sample(1:10,5,replace = F)
x
y<-sample(1:10,5,replace = F)
y
points(x,y)
plot(x,y,type = "b")
abline(h=10)
abline(v=10)
drugA<-c(16,20,27,40,60)
drugB<-c(15,18,25,31,40)
plot.new()
plot.window(xlim = c(0,100),ylim = c(0,100))
axis(1)
axis(2)
abline(h=0)
abline(v=0)
plot(drugA,type = "b",col="red",xlab = "dosage",ylab = "drugA&B")
lines(drugB,col="blue")
legend("topleft",c("drugA","drugB"),fill = c("red","blue"))
airquality
x<-airquality$Temp
y<-airquality$Month
boxplot(x~y,col=rainbow(5))
iris
x<-iris$Sepal.Length
y<-iris$Sepal.Width
z<-iris$Petal.Length
m<-iris$Petal.Width
plot(x,y)
iris
pairs(~x+y+z+m)




