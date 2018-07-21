#loops and decision making    
#assignment -- make all negative to zero
rm(list = ls())
r<-c(7,3,-8,4,2.5,-9,1,3.3)
s<-0  #initialize ooutput vector

#for loop option 1
for (val in r)  #for loop with mapping the vlaue, can not store but print
{
  print(val)
  print('hello')
}

#for loop option 2
for(i in c(1:length(r)))  #for loop with mapping by index
{
  if(r[i]>0)
  {
    s[i]<-r[i]
  }
  else
  {
      s[i]<-0
  }
}

#for loop option 3
#in line if else
for(i in c(1:length(r)))  #for loop with mapping by index
{
  ifelse(r[i]>0,s[i]<-r[i],s[i]<-0)
}



#----------------------------------------------------------------------------------
#while loop
i<-1
while (1<=6)
{
  print(i)
  if(i==5)
  {
    break
  }
  i<-i+1
}

#---------------------------------------------------------------------------------
