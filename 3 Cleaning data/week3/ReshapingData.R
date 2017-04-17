##Reshaping Data

library("reshape2")

#melting
shortMtcars=mtcars[1:6,]
View(shortMtcars)
shortMtcars$carNames=rownames(shortMtcars)
shortMelt=melt(shortMtcars,id=c("carNames","gear","cyl"),measure.vars=c("hp","mpg"))
View(shortMelt)

##casting from the melt
cylData=dcast(shortMelt,cyl~variable,mean)


##tapply
tapply(InsectSprays$count,InsectSprays$spray,sum)
tapply(InsectSprays$count,InsectSprays$spray,mean)

##split+sapply (or lapply)
sp=split(InsectSprays$count,InsectSprays$spray)
sp
class(sp)
sapply(sp,mean)
sapply(sp,sum)

## split + lapply
sprCount
class(sprCount)
sprCount=lapply(sp,sum)
class(sprCount)
sprCount
unlistedSpr=unlist(sprCount)

##plyr package
library(plyr)
ddply(InsectSprays,.(spray),summarize,sum=sum(count))

##creating a new variable with ddply
spraySums<-ddply(InsectSprays,.(spray),summarize,sum=ave(count,FUN=sum))
spraySums
head(spraySums)






