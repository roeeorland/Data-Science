
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

> ##Matrices
> x<-matrix(1:6, nrow=2,ncol=3)
> x
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> x<-1:6
> x
[1] 1 2 3 4 5 6
> dim(x)<-c(2,3)
> x
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> y<-1:3
> z<-4:6
> x<-rbind(y,z)
> x
  [,1] [,2] [,3]
y    1    2    3
z    4    5    6
> x<-cbind(y,z)
> x
     y z
[1,] 1 4
[2,] 2 5
[3,] 3 6
> dim(x)
     
dimnames(x)<-list(c("a","b","c"),c("1","2"))
 
colnames(x)<-c("a","b")
    
rownames(x)<-c("a","b","ab")
