corr<-function(directory=getwd(),threshold=0.1)
{
        relevant_monitors<-0
        id<-1:332
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
                
                if (counter>=threshold)
                {
                        relevant_monitors[length(relevant_monitors)+1]<-i
                }
                
        
        
        }
        correlation_vector<-c(0)
        if (length(relevant_monitors)>1)
        {
               
                relevant_monitors<-relevant_monitors[2:length(relevant_monitors)]
                counter<-1
		    for (i in relevant_monitors)
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
                        correlation_vector[counter]<-cor(x["sulfate"],x["nitrate"],use="complete.obs")
				counter<-counter+1
                }
                
                
                
        }
        
        correlation_vector
        
        
        
        
        
        
}