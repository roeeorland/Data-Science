#reading a fixed width file

x<-readLines("1.for")
length(x)
head(x)

y<-read.fwf("1.for",widths = c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4),skip=4)
head(y)
s<-sum(as.numeric(y[,4]))
s
