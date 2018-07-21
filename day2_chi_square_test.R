rm(list=ls())
#Chi-square test for Homogeneity of Proportions
#A-healthy,B-mild, C-Severe
dat<-as.table(rbind(c(410,340,250),c(95,85,70)))
dimnames(dat)<-list(Data.set=c("sample1","sample2"),groups=c("Healthy","Mild","Severe"))
xsq_dat<-chisq.test(dat)
#for real dataset, pass x,y variables
#show the test statistic
xsq_dat$statistic
xsq_dat$p.value
xsq_dat$expected
#p-value is high (0.563), hence accept the null hyp
#ie, no variations in the proportions (homogenious)