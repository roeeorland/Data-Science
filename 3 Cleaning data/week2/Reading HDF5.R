## www.hdfgroup.org

##creating a HDF5 file:
created=h5createFile("example.h5")

##creating groups
created=h5createGroup("example.h5","foo")
created=h5createGroup("example.h5","baa")
created=h5createGroup("example.h5","foo/foobaa")#sub group
h5ls("example.h5")#list components in file

## dataset objects inside the groups
A=matrix(1:10,nrow = 5,ncol=2)
A
U=h5write(A,"example.h5","foo/A")
h5ls("example.h5")

##objects with metadata

B=array(seq(0.1,2.0, by=0.1),dim=c(5,2,2))
B[,1,2]
attr(B,"scale")<-"liter"  
B
h5write(B,"example.h5","foo/foobaa/B")
h5ls("example.h5")

#reading
readA<-h5read("example.h5","foo/A")
readA

#writing chunks (changing datasets)
h5write(c(10,12,14),"example.h5","foo/A",index=list(1:3,1))
readA<-h5read("example.h5","foo/A")
readA

##index can be used with h5read as well
