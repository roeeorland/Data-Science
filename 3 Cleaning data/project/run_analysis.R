x_test=read.table("./Project Files Dataset/UCI HAR Dataset/test/x_test.txt")
y_test=read.table("./Project Files Dataset/UCI HAR Dataset/test/y_test.txt")
x_train=read.table("./Project Files Dataset/UCI HAR Dataset/train/x_train.txt")
y_train=read.table("./Project Files Dataset/UCI HAR Dataset/train/y_train.txt")
activity_labels=read.table("./Project Files Dataset/UCI HAR Dataset/activity_labels.txt")
convert_to_labels=function(x){as.character(activity_labels[x,2])}
test_activities<-as.character(apply(y_test,1:length(y_test),convert_to_labels))
train_activities<-as.character(apply(y_train,1:length(y_train),convert_to_labels))
