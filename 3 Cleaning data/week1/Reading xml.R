library(XML)
library(RCurl)
fileURL<-"https://www.w3schools.com/xml/simple.xml"
xData<-getURL(fileURL)
doc<-xmlParse(xData)
doc
rootNode<-xmlRoot(doc)
xmlName(rootNode)
