fileURL<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileURL,destfile = "1.csv")
community<-read.csv("1.csv")
agricultureLogical<-ifelse(community$ACR>2 & community$AGS>5,TRUE,FALSE)
table(agricultureLogical)
which(agricultureLogical)
head(which(agricultureLogical),n=3)
