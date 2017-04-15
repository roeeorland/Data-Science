fileURL<-"https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
download.file(fileURL,destfile = "restaurants.csv")
x<-read.csv(restaurants.csv)
x<-read.csv("restaurants.csv")
x
head(x)
head(x,n=3)
head(x,n=1)
names(x)
x[,names(x)[1]]
restData<-read.csv("restaurants.csv")
names(restData)
restData[1,1]
head(restData)
restData[1,2]
min(restData$zipCode)
min(restData[,2])
min(restData[,"zipCode"])
summary(restData)
str(restData)
summary(restData$zipCode)
quantile(restData$councilDistrict,na.rm = TRUE)
quantile(restData$councilDistrict,na.rm = TRUE,probs = c(0.5,0.6,0.9))
quantile(restData$councilDistrict,probs = c(0.5,0.6,0.9))
?table
table(restData$zipCode,useNA = "ifany")
t<-table(restData$zipCode,useNA = "ifany")
class(t)
t[-21226]
t[1]
length(t)
t[32]
t[31]
t["-21226"]
t["21251"]
t["21239"]
names(t)
class(names(t))
t2<-table(restData$zipCode,restData$councilDistrict)
t2
names(t2)
t2<-table(restData$zipCode,restData$neighborhood)
t2
t2<-table(restData$zipCode,restData$neighborhood[1:5])
sum(is.na(restData$zipCode))
any(is.na(restData$zipCode))
all(restData$councilDistrict>0)
all(restData$zipCode>0)
colSums(is.na(restData))
all(colSums(is.na(restData))==0)
any(colSums(is.na(restData))==0)
any(colSums(is.na(restData))!=0)
View(restData)
table(restData$zipCode =="21206")
table(restData$zipCode ="21206")
table(restData$zipCode =="21206")
table(restData$zipCode %in% c("21206")
)
table(restData$zipCode %in% c("21206","21223"))
table(restData$zipCode>0)
restData[restData$zipCode %in% c("21206","21223")]
restData[restData$zipCode %in% c("21206","21223"),]
data("UCBAdmissions")
DF<-as.data.frame(UCBAdmissions)
View(DF)
summary(DF)
table(DF$Dept,DF$Freq)
?xtabs
xtabs(freq~gender+admit,DF)
xtabs(Freq~gender+admit,DF)
xtabs(Freq~Gender+Admit,DF)
object.size(DF)
object.size(restData)
print(object.size(restData),units = "Mb")
