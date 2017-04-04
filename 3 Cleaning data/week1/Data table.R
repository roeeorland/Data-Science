##data.table


library(data.table)
DT<-data.table(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
View(DT)
DT$z
DT[1]
DT[1,3]
table()##info about the table
tables()##info about the table
DF<-data.frame(x=rnorm(9),y=rep(c("a","b","c"),each=3),z=rnorm(9))
tables()
DT[2,1]
DT[2,]
DT[,2]
DT[,mean(x),max(z)]
DT[,c(mean(x),max(z))]
DT[,c(mean(x),max(z))]#returns a vector of functions on the variables
DT[1:3,c(mean(x),max(z))]#returns a vector of functions on the variables
DT[1:3,c(mean(x),max(z))]#can do it on a subset of rows, as well
DT[,2:3]
DT[,table()]
DT[,table(y)]
class(DT$y)
length(DT[,table(y)])
DT[,w=z+y]#adding a new column
DT[,w:=z+x]#adding a new column. MUST USE ":="  !!!!!!!!
DT[,mean(w)]
DT[c(2,1)]
DT[c(2,3)]
DT[c(2,1)]#gives 2nd row, then 1st row
DT[,mean(w+z), by=y]#analyze by common attribute
