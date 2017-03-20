data<-read.csv('D:/Dropbox/studies/Data Science/2 R programming/Week 1/quiz1_data/hw1_data.csv',header=TRUE)
print(names(data))
head(data)
tail(data)
nrow(data)
data[47,1:3] #first 3 columns of row 47
sum(is.na(data[,1])) #number of missing values in 1st column
mean(na.omit(data[,1]))#mean values WITHOUT na

#OR

ozone_data<-subset(data,!is.na(data[,1]))

#OR

ozone_data<-subset(data,!is.na(Ozone),select=Ozone)
june_temp<-mean(Temp,na.omit(Temp),Month==5)