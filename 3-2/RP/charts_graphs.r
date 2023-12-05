#QN1 #LINE PLOT

data<-read.table("weight_chart.txt",header=TRUE)
data
  str(data)
  summary(data)
  data['tempmax']
  data[['tempmax']]
  data$tempmax
  arrange(data$tempmin)
plot(data,xlab="age in months", ylab="weight in kgs")

#Change the point character to be a filled square

plot(data,xlab="age in months", ylab="weight in kgs",pch=15)

#Change the plot point size to be 1.5x normal size--->cex

plot(data,xlab="age in months", ylab="weight in kgs",pch=15,cex=1.5,type='b')

#increase line thickness to 2
plot(data,xlab="age in months", ylab="weight in kgs",pch=15,lwd=2,cex=1.5,type='b')

#Change the x-axis to scale between 2 and 10kg
plot(data,xlab="age in months", ylab="weight in kgs",pch=15,lwd=2,cex=1.5,type='l',xlim=c(2,10))

#Add a suitable title to the top of the plot
plot(data,xlab="age in months", ylab="weight in kgs",main="baby age",
     pch=15,lwd=2,cex=1.5,type='l',xlim=c(2,10))



#qn2       BAR PLOT
data2<-read.table("Feature_Count.txt",header=TRUE,sep="\t")
data2

barplot(data2$Count)

barplot(data2$Count,horiz=T)

barplot(data2$Count,horiz=T,xlab="Count")

#add fearture names    #las=1

barplot(data2$Count,horiz=T,xlab="Count",las=1
       ,names.arg=data2$Feature,main="Feature count",col=rainbow(length(data2$Count)))


legend("topright",legend = c("feature","count"),fill=c("blue","red"))


barplot(data2$Count,horiz=T,xlab="Count",las=1
        ,names.arg=data2$Feature,main="Feature count",col=rainbow(length(data2$Count))
        ,border="red")  


m=matrix(1:9,nrow=3)
m
barplot(m,col=rainbow(3),xlab="rowdata",main="Stacked matrix")
barplot(m,beside=T,col=rainbow(3),xlab="rowdata",main="Stacked matrix2")


#histogram

d=c(rnorm(10000),rnorm(10000)+4)
hist(d,breaks=35)
  

#PIECHART
data3<-read.delim("https://training-course-material.com/images/9/97/Emp.txt")
data3

pie(data3$SAL,radius = 3)

pie(data3$SAL,labels=data3$ENAME,col=rainbow(nrow(data3)),main="Employee$sal",radius=1,cex=0.4)

per<- round(100*(data3$SAL/sum(data3$SAL)),1)
pie(data3$SAL,labels=per,col=rainbow(nrow(data3)),main="Employee$sal",radius=1.4,clockwise = F,cex=0.4)


#SCATTER PLOT
data4<-datasets::mtcars
data4
plot(data4$wt,data4$mpg,cex=0.4)
plot(mtcars,main="MTCARS_PLOT",col=c("red","yellow","blue"),cex=0.6)

plot(x=mtcars$cyl,y=mtcars$hp,xlab="cyl",ylab="hp",cex=1,pch=36,type="l",lwd=2,lty=3)

plot(mtcars,col=c("darkgreen","red","orange"),pch=c(15,18,38,36))





#BOXPLOT
data5<-datasets::iris
data5
boxplot(iris,xlim=c(2,4.5),notch=T,border=T,medcol="red",medlwd=1,outcol="red",outpch="+",outcex=0.4)
