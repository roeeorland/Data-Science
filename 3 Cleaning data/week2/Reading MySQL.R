library("RMySQL")
ucscDb<-dbConnect(MySQL(),user="genome",host="genome-mysql.cse.ucsc.edu")
result<-dbGetQuery(ucscDb,"show databases")## a list of all the databases available
result
dbDisconnect(ucscDb)
result
dbConnect(MySQL(),user="genome","host=genome-mysql.cse.ucsc.edu")
library("RMySQL")
dbConnect(MySQL(),user="genome","host=genome-mysql.cse.ucsc.edu")
ucscDb<-dbConnect(MySQL(),user="genome",host="genome-mysql.cse.ucsc.edu")
result<-dbGetQuery(ucscDb,"show databases")
result<-dbGetQuery(ucscDb,"show databases")
ucscDb<-dbConnect(MySQL(),user="genome",host="genome-mysql.cse.ucsc.edu")
result<-dbGetQuery(ucscDb,"show databases")
result
dbDisconnect(ucscDb)
result
hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")## getting a particular database
AllTables<-dbListTables(hg19)
head(AllTables)
hg19
AllTables
length(AllTables)
AllTables[1:5]
dbListFields(hg19,"affyU1338Plus2")
dbListFields(hg19,"affyU133Plus2")
dbListFields(hg19,"affyU133Plus2")
dbListFields(hg19,"affyU133Plus2")
hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")## getting a particular database
dbListFields(hg19,"affyU133Plus2")
dbListFields(hg19,"affyU133Plus2")
hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")## getting a particular database
AllTables<-dbListTables(hg19)
AllTables
dbListFields(hg19,"affyU133Plus2")
dbGetQuery(hg19,"select count()* from affyU133Plus2") ## simple SQL query
dbGetQuery(hg19,"select count(*) from affyU133Plus2") ## simple SQL query
affyData<-dbReadTable(hg19,"affyU133Plus2")
hg19<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")## getting a particular database
affyData<-dbReadTable(hg19,"affyU133Plus2")
warnings()
View(affyData)
head(affyData)
query<-dbSendQuery(hg19,"select * from affyU133Plus2 wheremismatches between 1 and 3")
query<-dbSendQuery(hg19,"select * from affyU133Plus2 where mismatches between 1 and 3")
affyMis<-fetch(query)
quantile(affyMis$misMatches)
affyMisSmall<-fetch(query,n=10)
dbClearResult(query)
dim(affyMisSmall)
dbDisconnect(hg19)
# MySQL commands http://www.pantz.org/software/mysql/mysqlcommands.html

