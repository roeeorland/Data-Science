
complete<-function(directory=getwd(),id=1:332)
{

	  nobs<-c(id)
	  k<-1
        for (i in id)
        {
                
                if(i<10)
                {
                        file_name<-paste("00",i,".csv",sep="")
                }
                else
                {
                        if (i<100)
                                file_name<-paste("0",i,".csv",sep="")
                        else
                                file_name<-paste(i,".csv",sep="")
                        
                }
                x<-read.csv(file_name);
                counter<-0
                 for (j in 1:length(x[,1]))
                 {
                        if (!is.na(x[j,2])&&!is.na(x[j,3]))
                                 counter<-counter+1
                         
                         
                 }

                 nobs[k]<-counter
		     k<-k+1
                 
                 
        }##for
        data.frame(id,nobs)
	  
        
}


