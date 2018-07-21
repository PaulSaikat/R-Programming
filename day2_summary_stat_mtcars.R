data("mtcars")
n_col<-ncol(mtcars)
n_row<-nrow(mtcars)
CName<-colnames(mtcars)
RName<-rownames(mtcars)
#var1<-mtcars[,1]
var1<-mtcars$mpg
cor(var1,var2)
var2<-mtcars$hp
c1<-cor(var1,var2)
var3<-mtcars$wt
c2<-cor(var1,var3)
c3<-cor(var1,var2,method="spearman")
c4<-cor(var1,var3,method="spearman")
c_total<-cor(mtcars)
#To find mean of all columns
#M<-colMeans(mtcars)
#M1<-as.matrix(M)
#colnames(M1)<-"MEAN"
#usage of Apply function
M1<-apply(mtcars,2,mean)
M2<-apply(mtcars,2,sd)
M3<-apply(mtcars,2,var)
M4<-apply(mtcars,2,min)
M5<-apply(mtcars,2,max)
M6<-apply(mtcars,2,median)
NewMat<-cbind(M1,M2,M3,M4,M5,M6)
write.csv(NewMat,"Summary_stat_mtcars.csv")





