library(MASS)
library(reshape)
library(reshape2)
data("ships")
molten_ships<-melt(ships,id=c("type","year"))
recasted_ship<-cast(molten_ships,type+year~variable,sum)
