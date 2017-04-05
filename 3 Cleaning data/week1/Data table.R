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
DT[,.N,by=y]# how often each value of y appears

## Keys
setkey(DT,y)
DT["a"]

## use keys to merge (like in sql)

DT2<-data.table(x=1:3,y=rep(c("a","b","c"),each=1))
DT3<-data.table(x=rnorm(3),y=rep(c("a","b","c"),each=1))
setkey(DT2,y)
setkey(DT3,y)
merge(DT2,DT3)

y x.x        x.y
1: a   1 -2.2917606
2: b   2 -0.1692266
3: c   3  0.4537311

## reading files quickly with fread

big_df<-data.frame(x=rnorm(1e6),y=rnorm(1e6))
f<-tempfile()
write.table(big_df,file=f,row.names = FALSE,col.names = TRUE,sep="\t",quote = FALSE)
system.time(fread(f))

Read 1000000 rows and 2 (of 2) columns from 0.035 GB file in 00:00:09
user  system elapsed 
7.94    0.03    8.12 

system.time(read.table(f,header=TRUE,sep="\t"))

user  system elapsed 
20.78    0.20   21.11 