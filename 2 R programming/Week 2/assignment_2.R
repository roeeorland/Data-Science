pollutantmean<-function(directory, pollutant, id=1:332)
{
        setwd(directory);
        counter<-0;
        pollutant_sum<-0
        pollutant_num<-0
        for (i in id)
        {
                counter<-counter+1;
                heading<-"";
                if(i<10)
                {
                        file_name<-paste("00",id[counter],".csv",sep="")
                }
                else
                {
                        if (i<100)
                                file_name<-paste("0",id[counter],".csv",sep="")
                        else
                                file_name<-paste(id[counter],".csv",sep="")
                        
                }
                
                x<-read.csv(file_name);
                pollutant_vector<-x[pollutant];
                pollutant_sum<-pollutant_sum+sum(pollutant_vector[!is.na(pollutant_vector)])
                pollutant_num<-pollutant_num+length(pollutant_vector[!is.na(pollutant_vector)])
                
                
        }##for
        
        pollutant_sum/pollutant_num
        
        
}

complete<-function(directory,id=1:332)
{
        for (i in id)
        {
                #  counter<-counter+1;
                # heading<-"";
                if(i<10)
                {
                        file_name<-paste("00",id[i],".csv",sep="")
                }
                else
                {
                        if (i<100)
                                file_name<-paste("0",id[i],".csv",sep="")
                        else
                                file_name<-paste(id[i],".csv",sep="")
                        
                }
                
                x<-read.csv(file_name);
                counter<-0
                for (j in 1:length(x[,1]))
                {
                        if (!is.na(x[j,2])&&!is.na(x[j,3]))
                                counter<-counter+1
                        
                        
                }
                nobs[i]<-counter
                
                
        }##for
        data.frame(id,nobs)
        
        
}









