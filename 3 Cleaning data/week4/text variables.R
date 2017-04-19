a="ABcF"
> tolower(a)
[1] "abcf"
> toupper(a)
[1] "ABCF"
> mylist<-list(letters=c("A","B","C"), numbers=1:3,matrix(1:25,ncol=5))
> class(mylist[1])
[1] "list"
> class(mylist[[1]])
[1] "character"
> class(mylist[[2]])
[1] "integer"
> class(mylist[2])
[1] "list"
> mylist[[1]][2]
[1] "B"
> mylist[1][2]
$<NA>
        NULL

> firstElement<-function(x){x[1]}
> sapply(mylist,firstElement)
letters numbers         
"A"     "1"     "1" 
> a="a.3"
> strsplit(x,"//.")
Error in strsplit(x, "//.") : object 'x' not found
> strsplit(a,"//.")
[[1]]
[1] "a.3"

> ?strsplit
> strsplit("12.3","2")
[[1]]
[1] "1"  ".3"

> strsplit("1.3",".")
[[1]]
[1] "" "" ""

> strsplit("1.3","/.")
[[1]]
[1] "1.3"

> strsplit("1.3","//.")
[[1]]
[1] "1.3"

> strsplit("1.3","\\.")
[[1]]
[1] "1" "3"

> strsplit(a,"\\.")
[[1]]
[1] "a" "3"

> class(strsplit(a,"\\."))
[1] "list"
> strsplit(a,"\\.")[1]
[[1]]
[1] "a" "3"

> strsplit(a,"\\.")[1][1]
[[1]]
[1] "a" "3"

> strsplit(a,"\\.")[[1]][1]
[1] "a"
> a="a_b_c"
> sub("_"," ",a)
[1] "a b_c"
> b=sub("_"," ",a)
> sub("_"," ",b)
[1] "a b c"
> gsub("_"," ",a)
[1] "a b c"
> a=list(c("repe","pe"),"pe",c("repe"))
> a
[[1]]
[1] "repe" "pe"  

[[2]]
[1] "pe"

[[3]]
[1] "repe"

> grep("re", a)
[1] 1 3
> grep("e", a)
[1] 1 2 3
> grep("r", a)
[1] 1 3
> table(grep("r",a))

1 3 
1 1 
> table(grep("re",a))

1 3 
1 1 
> table(a)
Error in table(a) : all arguments must have the same length
> 
        
        > table(grepl("re",a))

FALSE  TRUE 
1     2 
> b=table(grepl("re",a))
> b

FALSE  TRUE 
1     2 
> b[FALSE]
named integer(0)
> b[TRUE]

FALSE  TRUE 
1     2 
> b[1]
FALSE 
1 
> b[2]
TRUE 
2 
> b=table(grepl("pe",a))
> b

TRUE 
3 
> b[1]
TRUE 
3 
> b[2]
<NA> 
        NA 
> (grepl("pe",a))
[1] TRUE TRUE TRUE
> grep("re", a)
[1] 1 3
> grep("re", a,value = TRUE)
[1] "c(\"repe\", \"pe\")" "repe"               
> a="Ro'ee Orland"
> nchar(a)
[1] 12
> substr(a,1,5)
[1] "Ro'ee"
> paste(a,"Ze'ev",sep=" ")
[1] "Ro'ee Orland Ze'ev"
> 