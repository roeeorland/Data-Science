
> download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv",destfile = "acs.csv")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
Content type 'text/csv' length 4246554 bytes (4.0 MB)
downloaded 4.0 MB

> download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",destfile = "codebook.pdf")
trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf'
Content type 'application/pdf' length 119628 bytes (116 KB)
downloaded 116 KB

> download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",destfile = "codebook.pdf",method = "curl")
Warning messages:
        1: running command 'curl  "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"  -o "codebook.pdf"' had status 127 
2: In download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",  :
                            download had nonzero exit status
                    > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",destfile = "codebook2.pdf",method = "curl")
                    Warning messages:
                            1: running command 'curl  "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"  -o "codebook2.pdf"' had status 127 
                    2: In download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",  :
                                                download had nonzero exit status
                                        > ?download.file
                                        > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",destfile = "codebook2.pdf",method = "auto")
                                        trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf'
                                        Content type 'application/pdf' length 119628 bytes (116 KB)
                                        downloaded 116 KB
                                        
                                        > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",destfile = "codebook3.pdf",mode="wb")
                                        trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf'
                                        Content type 'application/pdf' length 119628 bytes (116 KB)
                                        downloaded 116 KB
                                        
                                        > setwd("D:/Dropbox/studies/Data-Science/3 Cleaning data/week4")
                                        > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf",destfile = "codebook.pdf",mode="wb")
                                        trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf'
                                        Content type 'application/pdf' length 119628 bytes (116 KB)
                                        downloaded 116 KB
                                        
                                        > acs<-read.csv("acs.csv")
                                        > names(acs)
                                        [1] "RT"       "SERIALNO" "DIVISION" "PUMA"     "REGION"  
                                        [6] "ST"       "ADJUST"   "WGTP"     "NP"       "TYPE"    
                                        [11] "ACR"      "AGS"      "BDS"      "BLD"      "BUS"     
                                        [16] "CONP"     "ELEP"     "FS"       "FULP"     "GASP"    
                                        [21] "HFL"      "INSP"     "KIT"      "MHP"      "MRGI"    
                                        [26] "MRGP"     "MRGT"     "MRGX"     "PLM"      "RMS"     
                                        [31] "RNTM"     "RNTP"     "SMP"      "TEL"      "TEN"     
                                        [36] "VACS"     "VAL"      "VEH"      "WATP"     "YBL"     
                                        [41] "FES"      "FINCP"    "FPARC"    "GRNTP"    "GRPIP"   
                                        [46] "HHL"      "HHT"      "HINCP"    "HUGCL"    "HUPAC"   
                                        [51] "HUPAOC"   "HUPARC"   "LNGI"     "MV"       "NOC"     
                                        [56] "NPF"      "NPP"      "NR"       "NRC"      "OCPIP"   
                                        [61] "PARTNER"  "PSF"      "R18"      "R60"      "R65"     
                                        [66] "RESMODE"  "SMOCP"    "SMX"      "SRNT"     "SVAL"    
                                        [71] "TAXP"     "WIF"      "WKEXREL"  "WORKSTAT" "FACRP"   
                                        [76] "FAGSP"    "FBDSP"    "FBLDP"    "FBUSP"    "FCONP"   
                                        [81] "FELEP"    "FFSP"     "FFULP"    "FGASP"    "FHFLP"   
                                        [86] "FINSP"    "FKITP"    "FMHP"     "FMRGIP"   "FMRGP"   
                                        [91] "FMRGTP"   "FMRGXP"   "FMVYP"    "FPLMP"    "FRMSP"   
                                        [96] "FRNTMP"   "FRNTP"    "FSMP"     "FSMXHP"   "FSMXSP"  
                                        [101] "FTAXP"    "FTELP"    "FTENP"    "FVACSP"   "FVALP"   
                                        [106] "FVEHP"    "FWATP"    "FYBLP"    "wgtp1"    "wgtp2"   
                                        [111] "wgtp3"    "wgtp4"    "wgtp5"    "wgtp6"    "wgtp7"   
                                        [116] "wgtp8"    "wgtp9"    "wgtp10"   "wgtp11"   "wgtp12"  
                                        [121] "wgtp13"   "wgtp14"   "wgtp15"   "wgtp16"   "wgtp17"  
                                        [126] "wgtp18"   "wgtp19"   "wgtp20"   "wgtp21"   "wgtp22"  
                                        [131] "wgtp23"   "wgtp24"   "wgtp25"   "wgtp26"   "wgtp27"  
                                        [136] "wgtp28"   "wgtp29"   "wgtp30"   "wgtp31"   "wgtp32"  
                                        [141] "wgtp33"   "wgtp34"   "wgtp35"   "wgtp36"   "wgtp37"  
                                        [146] "wgtp38"   "wgtp39"   "wgtp40"   "wgtp41"   "wgtp42"  
                                        [151] "wgtp43"   "wgtp44"   "wgtp45"   "wgtp46"   "wgtp47"  
                                        [156] "wgtp48"   "wgtp49"   "wgtp50"   "wgtp51"   "wgtp52"  
                                        [161] "wgtp53"   "wgtp54"   "wgtp55"   "wgtp56"   "wgtp57"  
                                        [166] "wgtp58"   "wgtp59"   "wgtp60"   "wgtp61"   "wgtp62"  
                                        [171] "wgtp63"   "wgtp64"   "wgtp65"   "wgtp66"   "wgtp67"  
                                        [176] "wgtp68"   "wgtp69"   "wgtp70"   "wgtp71"   "wgtp72"  
                                        [181] "wgtp73"   "wgtp74"   "wgtp75"   "wgtp76"   "wgtp77"  
                                        [186] "wgtp78"   "wgtp79"   "wgtp80"  
                                        > st=strsplit(names(acs))
                                        Error in strsplit(names(acs)) : 
                                                argument "split" is missing, with no default
                                        > ?strsplit
                                        > st=strsplit(names(acs),[0-9])
                                        Error: unexpected '[' in "st=strsplit(names(acs),["
                                        > st=strsplit(names(acs),"wgtp")
                                        > st[123]
                                        [[1]]
                                        [1] ""   "15"
                                        
                                        > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile = "gdp.csv")
                                        trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
                                        Content type 'text/csv' length 9630 bytes
                                        downloaded 9630 bytes
                                        
                                        > gdp<-read.csv("gdp.csv")
                                        > View(gdp)
                                        > ?gsub
                                        > library(dplyr)
                                        
                                        Attaching package: ‘dplyr’
                                        
                                        The following objects are masked from ‘package:stats’:
                                                
                                                filter, lag
                                        
                                        The following objects are masked from ‘package:base’:
                                                
                                                intersect, setdiff, setequal, union
                                        
                                        Warning message:
                                                package ‘dplyr’ was built under R version 3.3.3 
                                        > gdp=mutate(gdp,X.3=gsub(",","",X.3))
                                        > class(gdp$X.3[8])
                                        [1] "character"
                                        > (gdp$X.3[8])
                                        [1] " 3428131 "
                                        > library(readr)
                                        Warning message:
                                                package ‘readr’ was built under R version 3.3.3 
                                        > parse_number(gdp$X.3[8])-1
                                        [1] 3428130
                                        > gdp=mutate(gdp,X.3=parse_number(X.3))
                                        Warning: 25 parsing failures.
                                        row col expected       actual
                                        2  -- a number (millions of
                                                        3  -- a number US dollars) 
                                        196  -- a number .           
                                        197  -- a number .           
                                        198  -- a number .           
                                        ... ... ........ ............
                                        See problems(...) for more details.
                                        
                                        > gdp=gdp[5:194,]
                                        > mean(gdp$X.3)
                                        [1] 377652.4
                                        > grep("^United",gdp$X.2)
                                        [1]  1  6 32
                                        > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv",destfile = "gdp2.csv")
                                        trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
                                        Content type 'text/csv' length 9630 bytes
                                        downloaded 9630 bytes
                                        
                                        > gdp=read.csv("gdp2.csv")
                                        > download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv",destfile = "edu2.csv")
                                        trying URL 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
                                        Content type 'text/csv' length 59792 bytes (58 KB)
                                        downloaded 58 KB
                                        
                                        > edu=read.csv("edu2.csv")
                                        > View(gdp)
                                        > View(edu)
                                        > gdp=gdp[gdp$X!="",]
                                        > View(gdp)
                                        > View(gdp)
                                        > merged=merge(gdp,edu,by.x = "X",by.y = "CountryCode")
                                        > View(merged)
                                        > grep("^Fiscal year end:",merged$Special.Notes,value = FALSE)
                                        [1]   3  11  18  31  33  58  63  74  87  91  93 100 102 109 121
                                        [16] 137 145 147 154 155 157 164 177 179 189 190 196 206 210 221
                                        [31] 224
                                        > fiscal_date_exists=grep("^Fiscal year end:",merged$Special.Notes,value = FALSE)
                                        > fiscal_date_exists<-grep("^Fiscal year end:",merged$Special.Notes,value = FALSE)
                                        > View(fiscal_date_exists)
                                        > class(fiscal_date_exists)
                                        [1] "integer"
                                        > library(lubridate)
                                        
                                        Attaching package: ‘lubridate’
                                        
                                        The following object is masked from ‘package:base’:
                                                
                                                date
                                        
                                        Warning message:
                                                package ‘lubridate’ was built under R version 3.3.3 
                                        > dmy(merged$Special.Notes[fiscal_date_exists])
                                        [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
                                        [21] NA NA NA NA NA NA NA NA NA NA NA
                                        Warning message:
                                                All formats failed to parse. No formats found. 
                                        > fiscal_year_ends_june<-grep("^Fiscal year end: June:",merged$Special.Notes,value = FALSE)
                                        > fiscal_year_ends_june<-grep("^Fiscal year end: June",merged$Special.Notes,value = FALSE)
                                        > library(quantmod)
                                        Error in library(quantmod) : there is no package called ‘quantmod’
                                        > amzn = getSymbols("AMZN",auto.assign=FALSE)
                                        Error: could not find function "getSymbols"
                                        > sampleTimes = index(amzn)
                                        Error: could not find function "index"
                                        > install.packages(quantmod)
                                        Error in install.packages : object 'quantmod' not found
                                        > install.packages("quantmod")
                                        also installing the dependencies ‘xts’, ‘zoo’, ‘TTR’
                                        
                                        
                                        There is a binary version available but the source
                                        version is later:
                                                binary source needs_compilation
                                        quantmod  0.4-7  0.4-8             FALSE
                                        
                                        trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.3/xts_0.9-7.zip'
                                        Content type 'application/zip' length 661023 bytes (645 KB)
                                        downloaded 645 KB
                                        
                                        trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.3/zoo_1.8-0.zip'
                                        Content type 'application/zip' length 902449 bytes (881 KB)
                                        downloaded 881 KB
                                        
                                        trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.3/TTR_0.23-1.zip'
                                        Content type 'application/zip' length 432724 bytes (422 KB)
                                        downloaded 422 KB
                                        
                                        package ‘xts’ successfully unpacked and MD5 sums checked
                                        package ‘zoo’ successfully unpacked and MD5 sums checked
                                        package ‘TTR’ successfully unpacked and MD5 sums checked
                                        
                                        The downloaded binary packages are in
                                        C:\Users\User\AppData\Local\Temp\RtmpKKoaah\downloaded_packages
                                        installing the source package ‘quantmod’
                                        
                                        trying URL 'https://cran.rstudio.com/src/contrib/quantmod_0.4-8.tar.gz'
                                        Content type 'application/x-gzip' length 135328 bytes (132 KB)
                                        downloaded 132 KB
                                        
                                        * installing *source* package 'quantmod' ...
                                        ** package 'quantmod' successfully unpacked and MD5 sums checked
                                        ** R
                                        ** demo
                                        ** preparing package for lazy loading
                                        Warning: package 'xts' was built under R version 3.3.3
                                        Warning: package 'zoo' was built under R version 3.3.3
                                        Warning: package 'TTR' was built under R version 3.3.3
                                        ** help
                                        *** installing help indices
                                        ** building package indices
                                        ** testing if installed package can be loaded
                                        Warning: package 'xts' was built under R version 3.3.3
                                        Warning: package 'zoo' was built under R version 3.3.3
                                        Warning: package 'TTR' was built under R version 3.3.3
                                        * DONE (quantmod)
                                        
                                        The downloaded source packages are in
                                        ‘C:\Users\User\AppData\Local\Temp\RtmpKKoaah\downloaded_packages’
                                        > library(quantmod)
                                        Loading required package: xts
                                        Loading required package: zoo
                                        
                                        Attaching package: ‘zoo’
                                        
                                        The following objects are masked from ‘package:base’:
                                                
                                                as.Date, as.Date.numeric
                                        
                                        
                                        Attaching package: ‘xts’
                                        
                                        The following objects are masked from ‘package:dplyr’:
                                                
                                                first, last
                                        
                                        Loading required package: TTR
                                        Version 0.4-0 included new data defaults. See ?getSymbols.
                                        Learn from a quantmod author: https://www.datacamp.com/courses/importing-and-managing-financial-data-in-r
                                        Warning messages:
                                                1: package ‘xts’ was built under R version 3.3.3 
                                        2: package ‘zoo’ was built under R version 3.3.3 
                                        3: package ‘TTR’ was built under R version 3.3.3 
                                        > amzn = getSymbols("AMZN",auto.assign=FALSE)
                                        As of 0.4-0, ‘getSymbols’ uses env=parent.frame() and
                                        auto.assign=TRUE by default.
                                        
                                        This  behavior  will be  phased out in 0.5-0  when the call  will
                                        default to use auto.assign=FALSE. getOption("getSymbols.env") and 
                                        getOptions("getSymbols.auto.assign") are now checked for alternate defaults
                                        
                                        This message is shown once per session and may be disabled by setting 
                                        options("getSymbols.warning4.0"=FALSE). See ?getSymbols for more details.
                                        > sampleTimes = index(amzn)
                                        > View(sampleTimes)
                                        > names(sampleTimes)
                                        NULL
                                        > format(sampleTimes,%y)
                                        Error: unexpected input in "format(sampleTimes,%y)"
                                        > format(sampleTimes,"%y")
                                        [1] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [12] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [23] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [34] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [45] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [56] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [67] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [78] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [89] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [100] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [111] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [122] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [133] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [144] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [155] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [166] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [177] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [188] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [199] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [210] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [221] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [232] "07" "07" "07" "07" "07" "07" "07" "07" "07" "07" "07"
                                        [243] "07" "07" "07" "07" "07" "07" "07" "07" "07" "08" "08"
                                        [254] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [265] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [276] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [287] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [298] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [309] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [320] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [331] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [342] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [353] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [364] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [375] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [386] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [397] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [408] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [419] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [430] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [441] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [452] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [463] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [474] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [485] "08" "08" "08" "08" "08" "08" "08" "08" "08" "08" "08"
                                        [496] "08" "08" "08" "08" "08" "08" "08" "08" "08" "09" "09"
                                        [507] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [518] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [529] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [540] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [551] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [562] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [573] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [584] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [595] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [606] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [617] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [628] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [639] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [650] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [661] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [672] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [683] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [694] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [705] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [716] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [727] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [738] "09" "09" "09" "09" "09" "09" "09" "09" "09" "09" "09"
                                        [749] "09" "09" "09" "09" "09" "09" "09" "09" "10" "10" "10"
                                        [760] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [771] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [782] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [793] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [804] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [815] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [826] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [837] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [848] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [859] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [870] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [881] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [892] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [903] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [914] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [925] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [936] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [947] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [958] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [969] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [980] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [991] "10" "10" "10" "10" "10" "10" "10" "10" "10" "10"
                                        [ reached getOption("max.print") -- omitted 1592 entries ]
                                        > grep("12",format(sampleTimes,"%y"))
                                        [1] 1261 1262 1263 1264 1265 1266 1267 1268 1269 1270 1271 1272
                                        [13] 1273 1274 1275 1276 1277 1278 1279 1280 1281 1282 1283 1284
                                        [25] 1285 1286 1287 1288 1289 1290 1291 1292 1293 1294 1295 1296
                                        [37] 1297 1298 1299 1300 1301 1302 1303 1304 1305 1306 1307 1308
                                        [49] 1309 1310 1311 1312 1313 1314 1315 1316 1317 1318 1319 1320
                                        [61] 1321 1322 1323 1324 1325 1326 1327 1328 1329 1330 1331 1332
                                        [73] 1333 1334 1335 1336 1337 1338 1339 1340 1341 1342 1343 1344
                                        [85] 1345 1346 1347 1348 1349 1350 1351 1352 1353 1354 1355 1356
                                        [97] 1357 1358 1359 1360 1361 1362 1363 1364 1365 1366 1367 1368
                                        [109] 1369 1370 1371 1372 1373 1374 1375 1376 1377 1378 1379 1380
                                        [121] 1381 1382 1383 1384 1385 1386 1387 1388 1389 1390 1391 1392
                                        [133] 1393 1394 1395 1396 1397 1398 1399 1400 1401 1402 1403 1404
                                        [145] 1405 1406 1407 1408 1409 1410 1411 1412 1413 1414 1415 1416
                                        [157] 1417 1418 1419 1420 1421 1422 1423 1424 1425 1426 1427 1428
                                        [169] 1429 1430 1431 1432 1433 1434 1435 1436 1437 1438 1439 1440
                                        [181] 1441 1442 1443 1444 1445 1446 1447 1448 1449 1450 1451 1452
                                        [193] 1453 1454 1455 1456 1457 1458 1459 1460 1461 1462 1463 1464
                                        [205] 1465 1466 1467 1468 1469 1470 1471 1472 1473 1474 1475 1476
                                        [217] 1477 1478 1479 1480 1481 1482 1483 1484 1485 1486 1487 1488
                                        [229] 1489 1490 1491 1492 1493 1494 1495 1496 1497 1498 1499 1500
                                        [241] 1501 1502 1503 1504 1505 1506 1507 1508 1509 1510
                                        > length(grep("12",format(sampleTimes,"%y")))
                                        [1] 250
                                        > indices_collected_in_2012=grep("12",format(sampleTimes,"%y"))
                                        > collection_days_2012=format(sampleTimes[indices_collected_in_2012],"%A")
                                        > collection_days_2012=format(sampleTimes[indices_collected_in_2012],"%a")
                                        > length(grep("éåí á",collection_days_2012)
                                                 + ()
                                                 + 
                                                         
                                                         > length(grep("éåí á",collection_days_2012))
                                                 [1] 0
                                                 > length(grep("Mon",collection_days_2012))
                                                 [1] 0
                                                 > View(collection_days_2012)
                                                 Error in View : 'names' attribute [5] must be the same length as the vector [1]
                                                 > class(collection_days_2012)
                                                 [1] "character"
                                                 > length(collection_days_2012)
                                                 [1] 250
                                                 > collection_days_2012[23]
                                                 [1] "éåí å"
                                                 > ?format
                                                 > Sys.setlocale("LC_TIME", "English")
                                                 [1] "English_United States.1252"
                                                 > collection_days_2012=format(sampleTimes[indices_collected_in_2012],"%a")
                                                 > length(grep("Mon",collection_days_2012))
                                                 [1] 47