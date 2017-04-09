##web scraping
con=url("https://scholar.google.co.il/citations?hl=en&authorid=255306208673232113&user=trun_B4AAAAJ")
htmlCode=readLines(con)
htmlCode
con=url("https://scholar.google.co.il/citations?hl=en&user=trun_B4AAAAJ&authorid=255306208673232113&view_op=list_works&gmla=AJsN-F7fzhdONXiusdDlWP1cg2jNg-bKzmp9sek6__2NZ4O8XxYAvBbZmim1909M7yBzW0hLcSIbjzTXSZPdII_f3ajVvO4iiyp--zCdg1TJf6qlfJAluEUimwGeOq1lSZO7fMKxCRIh")
htmlCode=readLines(con)
htmlCode
close(con)


## using XML

library(XML)
url<-"https://scholar.google.co.il/citations?hl=en&user=trun_B4AAAAJ&authorid=255306208673232113&view_op=list_works&gmla=AJsN-F7fzhdONXiusdDlWP1cg2jNg-bKzmp9sek6__2NZ4O8XxYAvBbZmim1909M7yBzW0hLcSIbjzTXSZPdII_f3ajVvO4iiyp--zCdg1TJf6qlfJAluEUimwGeOq1lSZO7fMKxCRIh"
html<-htmlTreeParse(url,useInternalNodes = TRUE)
xpathSApply(html,"//title",xmlValue)

## GET from the httr package


library(httr)
html2=GET(url)
content2=content(html2,as="text")
parsedHtml=htmlParse(content2,asText = TRUE)
xpathSApply(parsedHtml,"//title",xmlValue)



