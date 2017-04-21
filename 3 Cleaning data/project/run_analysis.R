rm(list = ls())

library(dplyr)
#reading the files
x_test=read.table("./Project Files Dataset/UCI HAR Dataset/test/x_test.txt")
y_test=read.table("./Project Files Dataset/UCI HAR Dataset/test/y_test.txt")
x_train=read.table("./Project Files Dataset/UCI HAR Dataset/train/x_train.txt")
y_train=read.table("./Project Files Dataset/UCI HAR Dataset/train/y_train.txt")

#getting the labels
activity_labels=read.table("./Project Files Dataset/UCI HAR Dataset/activity_labels.txt")
convert_to_labels=function(x){as.character(activity_labels[x,2])}
test_activities<-as.character(apply(y_test,1:length(y_test),convert_to_labels))
train_activities<-as.character(apply(y_train,1:length(y_train),convert_to_labels))


#changing variable names 

features=read.table("./Project Files Dataset/UCI HAR Dataset/features.txt")
names(x_test)=features$V2
names(x_train)=features$V2

#when we merge the test and train sets, we want to know whether an observation
#is from test or train, so we add a "type"  
type=1:length(x_test$`tBodyAcc-mean()-X`)
type[1:length(type)]="test"
x_test=cbind(x_test,type)

type=1:length(x_train$`tBodyAcc-mean()-X`)
type[1:length(type)]="train"
x_train=cbind(x_train,type)

#adding subject IDs

subject_test=read.table("./Project Files Dataset/UCI HAR Dataset/test/subject_test.txt")
x_test=cbind(subject_test,x_test)
names(x_test)[1]="subject"
subject_train=read.table("./Project Files Dataset/UCI HAR Dataset/train/subject_train.txt")
x_train=cbind(subject_train,x_train)
names(x_train)[1]="subject"

