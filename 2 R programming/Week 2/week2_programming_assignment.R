pollutantmean<-function(directory, pollutant, id)
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