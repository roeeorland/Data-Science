edu<-read.csv("edu.csv")
> gdp<-read.csv("gdp.csv")
> View(gdp)
> View(gdp)
> View(edu)
> View(gdp)
> library(dplyr)
> gdp<-gdp[5:194,]
> View(gdp)
> View(gdp)
> View(edu)
> merged<-merge(gdp,edu,by.x = "X",by.y = "CountryCode")
> mergedArranged<-arrange(merged,desc(Gross.domestic.product.2012))
> View(mergedArranged)
> View(mergedArranged)
> View(mergedArranged)
> library(readr)
> merged<-mutate(merged,Gross.domestic.product.2012=parse_number(Gross.domestic.product.2012))
> mergedArranged<-arrange(merged,desc(Gross.domestic.product.2012))
> View(gdp)
> gdp<-read.csv("gdp.csv")
> View(gdp)
> View(gdp)
> View(edu)
> mergedArrangedGrouped<-group_by(mergedArranged,Income.Group)
> View(mergedArrangedGrouped)
> View(mergedArrangedGrouped)
> summarize(mergedArrangedGrouped,mean(Gross.domestic.product.2012))
# A tibble: 5 ª 2
Income.Group `mean(Gross.domestic.product.2012)`
<fctr>                               <dbl>
        1 High income: nonOECD                            91.91304
2    High income: OECD                            32.96667
3           Low income                           133.72973
4  Lower middle income                           107.70370
5  Upper middle income                            92.13333