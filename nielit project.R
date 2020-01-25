a=read.csv(file.choose())
a
pp=a$Q17
pp1=pp
pp1=remove_empty("rows")
pp1
p2=summary(pp)
p2
p3=sort(p2)
barplot(p3,las=2)

