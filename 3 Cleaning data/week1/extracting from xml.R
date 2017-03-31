download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", destfile = "restaurants.xml")
doc<-xmlParse("restaurants.xml")
rootNode<-xmlRoot(doc)
xpathSApply(rootNode,"//zipcode",xmlValue)
zipcodes<-xpathSApply(rootNode,"//zipcode",xmlValue)
length(zipcodes)
zipcode21231<-zipcodes[zipcodes[]=="21231"]
length(zipcode21231)
