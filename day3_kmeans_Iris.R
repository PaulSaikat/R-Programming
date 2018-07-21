rm(list=ls())
dat<-read.csv("iris.csv",header=FALSE)
x<-dat[,-ncol(dat)]
head(x)
inp<-scale(x)#z-score standardization (x-xbar)/sd(x)
set.seed(10) #it will pick same initial value
clust <- kmeans(inp, 3, nstart = 21)
clust
#write to file
write.csv(clust$cluster,"iris_cluster_kmeans.csv")
write.csv(clust$centers,"iris_clust_centers_kmeans.csv")
library("scatterplot3d") # load
#3d plot 
colors <- c("green","orange", "blue")
colors <- colors[as.numeric(clust$cluster)]
scatterplot3d(inp[,3:4], pch = 16, color=colors)
legend("top",c("Versicolor","Virginica","Sentosa"),col=c("forestgreen","darkorange", "mediumblue"),pch = 16,inset = -0.25, xpd = TRUE, horiz = TRUE) 





