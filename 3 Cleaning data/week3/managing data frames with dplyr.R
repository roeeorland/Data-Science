#from Chicago dataframe with columns names city, tmpd, dptp, date..

#select

select(Chicago,city:dptp)
select(Chicago,-(city:dptp))


#filter

chic.f<-filter(chicago, pm25mean2>30 & tmpd>80)

#arrange

chicago<-arrange(chicago,date)
chicago<-arrange(chicago,desc(date))

#rename
rename(chicago, pm25=pm25mean2,dewpoint=dptp)

#mutate

chicago<-mutate(chicago,pm25detrent=pm25-mean(pm25,na.rm=TRUE))

#group_by
hot_cold<-group_by(chicago,tempcat)
#summarize will give a summary for each group

##pipeline operator
chicago %>% mutate(month=...) %>% group_by(month)%>%summarize()
                 
                 
