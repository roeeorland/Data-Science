rankall_draft<-function(outcome,num="best")
{
        measures<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
        measures[]
        list_names<-names(measures)
        #measures<-unname(measures)

        
        ## is the outcome valid
        
        boolean<-FALSE
        if (outcome!="heart attack" && outcome!="heart failure" && outcome!="pneumonia")
        {
                stop("invalid outcome")
        }
        
        ## choosing column according to which outcome we're tracking
        
        outcome_column<- 0
        if(outcome=="heart attack")
        {
                outcome_column<-11
        }
        else
        {
                if (outcome=="heart failure")
                {
                        outcome_column<-17
                        
                }
                else
                {
                        outcome_column<-23
                        
                }
        }
        
        
        
        
        measures[,outcome_column]<-as.numeric(measures[,outcome_column])
        measures<-measures[!is.na(measures[,outcome_column]),]#getting rid of NAs
        split_measures<-split(measures,measures[,7])#creates a list of lists per state
        result<-character(2*length(split_measures))
        state_names<-character(length(split_measures))
        dim(result)<-c(length(split_measures),2)
        for(i in 1:length(split_measures))# a loop running on each state list
        {
                state_data<-as.data.frame(split_measures[i])
                state_names[i]<-state_data[1,7]
                # names(state_data)<-list_names
                # rownames(state_data)<-NULL
                ranking_vector<-numeric(length(state_data[,1]))+1
                
                #adjusting num. couldn't do it before because "worst" depends on number of hospitals in state
                num2<-num
                if (num=="best")
                        num2<-1
                if (num=="worst")
                        num2<-length(ranking_vector)
                
                
                        
                
                
                
                
                
                ##for every hospital we want to know how many hospitals are better
                
                for(j in 1:length(ranking_vector))
                        for(k in 1:length(ranking_vector))
                                if((state_data[j,outcome_column]>state_data[k,outcome_column])||((state_data[j,outcome_column]==state_data[k,outcome_column])&&(state_data[j,2]>state_data[k,2])))
                                        ranking_vector[j]<-ranking_vector[j]+1
                
                
                        
                
        
                
                if (num2>length(ranking_vector))
                {
                        result[i,1]<-"NA"
                        result[i,2]<-state_data[1,7]
                  
                       
                }
                        
                        
                
                        
                else
                {
                        t<-0
                        for(k in 1:length(ranking_vector))
                        {
                                if (num2==ranking_vector[k])
                                        t<-k
                        }
                        #result[i,]<-c(state_data[1,7],state_data[t,7])
                        result[i,1]<-state_data[t,2];
                        result[i,2]<-state_data[1,7]
                                
                                
                }
                
                
                
                
                
                
                
        }#end of main list loop
       
        result_data_frame<-as.data.frame(result)
        names(result_data_frame)<-c("hospital","state")
        #rownames(result_data_frame)<-state_names
        result_data_frame
        
        
        
        
        
        
}
        