
R version 3.3.2 (2016-10-31) -- "Sincere Pumpkin Patch"
Copyright (C) 2016 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Previously saved workspace restored]

> #Data frames
> #every column can be different class (unlike matrices)
> # can be created by read.table, read.csv, data.frames
> x<-data.frame(foo=1:4,bar=c(T,T,F,F))
> x
  foo   bar
1   1  TRUE
2   2  TRUE
3   3 FALSE
4   4 FALSE
> x[1]
  foo
1   1
2   2
3   3
4   4
> x[[1]]
[1] 1 2 3 4
> class(x[1])
[1] "data.frame"
> class(x[[1]])
[1] "integer"
> x<-data.frame(a=1:3,b=2:4,c=5:7)
> x
  a b c
1 1 2 5
2 2 3 6
3 3 4 7
> ##using data.matrix and as.matrix
> asmatrix<-as.matrix(x)
> asmatrix
     a b c
[1,] 1 2 5
[2,] 2 3 6
[3,] 3 4 7
> datamatrix<-data.matrix(x)
> datamatrix
     a b c
[1,] 1 2 5
[2,] 2 3 6
[3,] 3 4 7
> class(asmatrix)
[1] "matrix"
> class(datamatrix)
[1] "matrix"
> asmatrix[a]
Error: object 'a' not found
> asmatrix["a"]
[1] NA
> asmatrix[,"a"]
[1] 1 2 3
> datamatrix[,"a"]
[1] 1 2 3

> > x["a"]
  a
1 1
2 2
3 3
> x[["a"]]
[1] 1 2 3
> names(x)
[1] "a" "b" "c"
> names(asdata)
Error: object 'asdata' not found
> names(asmatrix)
NULL
> names(datamatrix)
NULL
> datamatrix
     a b c
[1,] 1 2 5
[2,] 2 3 6
[3,] 3 4 7
> names(datamatrix)<-c("a","b","c")
> names(datamatrix)
[1] "a" "b" "c" NA  NA  NA  NA  NA  NA 
> names(asmatrix)<-c("a","b","c")
> names(asmatrix)
[1] "a" "b" "c" NA  NA  NA  NA  NA  NA 
> #for data frames use names()for columns, or row.names(). 
             
             
## using order()
             
             x1<-c(1:6)
x2<-c("b","d","e","a","f","c")
x_matrix<-cbind(x1,x2)
x_matrix
x_sorted<-x_matrix[order(x_matrix[,2]),]
x_sorted

             
             
             
             
             
             
             
   ##dplyr library          
     
> library(dplyr)
Error in library(dplyr) : there is no package called ‘dplyr’
> package.install("dplyr")
Error: could not find function "package.install"
> packages.install("dplyr")
Error: could not find function "packages.install"
> install.packages("dplyr")
--- Please select a CRAN mirror for use in this session ---
also installing the dependencies ‘assertthat’, ‘tibble’, ‘lazyeval’, ‘DBI’, ‘BH’

trying URL 'https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/contrib/3.3/assertthat_0.1.zip'
Content type 'application/zip' length 44770 bytes (43 KB)
downloaded 43 KB

trying URL 'https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/contrib/3.3/tibble_1.2.zip'
Content type 'application/zip' length 620672 bytes (606 KB)
downloaded 606 KB

trying URL 'https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/contrib/3.3/lazyeval_0.2.0.zip'
Content type 'application/zip' length 139753 bytes (136 KB)
downloaded 136 KB

trying URL 'https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/contrib/3.3/DBI_0.6.zip'
Content type 'application/zip' length 743406 bytes (725 KB)
downloaded 725 KB

trying URL 'https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/contrib/3.3/BH_1.62.0-1.zip'
Content type 'application/zip' length 16150075 bytes (15.4 MB)
downloaded 15.4 MB

trying URL 'https://ftp.heanet.ie/mirrors/cran.r-project.org/bin/windows/contrib/3.3/dplyr_0.5.0.zip'
Content type 'application/zip' length 2557263 bytes (2.4 MB)
downloaded 2.4 MB

package ‘assertthat’ successfully unpacked and MD5 sums checked
package ‘tibble’ successfully unpacked and MD5 sums checked
package ‘lazyeval’ successfully unpacked and MD5 sums checked
package ‘DBI’ successfully unpacked and MD5 sums checked
package ‘BH’ successfully unpacked and MD5 sums checked
package ‘dplyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
        C:\Users\User\AppData\Local\Temp\RtmpsvhBaG\downloaded_packages
> 
