##crerating a sequence

s1<-seq(1,10,by=2) 

s2<-seq(1,10,length=3)
s3<-seq(along=x)

restData$nearMe=restData$neighborhood %in% c("Roland Park", "Homeland")
table(restData$nearMe)
restData$nearMe[1]
sum(restData$nearMe)
restData$notNearMe=!(restData$neighborhood %in% c("Roland Park", "Homeland"))
table(restData$notNearMe)
restData$isWrong=ifelse(restData$zipCode<0,TRUE,FALSE)
table(restData$isWrong)

#Creating categories

restData$zipGroups=cut(restData$zipCode,breaks = quantile(restData$zipCode))
table(restData$zipGroups)
min(restData$zipCode)
table(restData$zipGroups,restData$zipCode)
table(restData$zipGroups,restData$zipCode)
table(restData$zipGroups,restData$zipCode)
quantile(restData$zipCode,c(0.001,0.5))
quantile(restData$zipCode,c(0.0000001,0.5))

#easier cut:

library("Hmisc")
restData$zipGroups=cut2(restData$zipCode,g=4)

