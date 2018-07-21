rm(list=ls())
#ANOVA test (f-statistic)
#set1 data
A<-c(30,40,50,60) 
B<-c(25,30,50,55)
C<-c(25,30,40,45)

#between group variablity
ab<-append(A,B)
dat_values<-append(ab,C)
dat_labels<-factor(c(rep("A",length(A)),rep("B",length(B)),rep("C",length(C))))
res1<-aov(dat_values~dat_labels)
summary(res1)


mean(dat_values)
4*((mean(A)-40)+(mean(B)-40)+(mean(C)-40))

   