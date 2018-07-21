rm(list=ls())
x<-read_table("HR.txt")
head(x)













x<-read.table("HR.txt",header = T,sep="\t",row.names = 1)
f1<-table(x$Attrition)
barplot(f1,col=c("red","blue"))
f2<-table(x$Gender)
barplot(f2,col=rainbow(10))
f3<-table(x$Attrition,x$Gender)
barplot(f3,legend=row.names(f3),col=c("blue","red"),main="comparison Barplot")
#another option(clustered barplot)
barplot(f3,col=c("red","green"),beside=TRUE)


barplot(f3,col=c("blue","red"),main="comparison Barplot")
legend("bottom",c(rownames(f3)),col=c("blue","red"),pch=15)


jpeg(file="BasicPlot.jpg")
par(mfrow=c(1,2))

par(mfrow=c(1,1))
dev.off()
