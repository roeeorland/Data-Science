rankall<-function(outcome,num="best")
{
        measures<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        if (outcome=="heart attack")
                
                outcome_column<-11
        
        else
                if (outcome=="heart failure")
                        outcome_column<-17
                else
                        if (outcome=="pneumonia")
                                outcome_column<-23
                        else
                                stop("invalid outcome")
                        

               
        
                        
        measures<-measures[measures[,outcome_column]!="Not Available",]
        measures[,outcome_column]<-as.numeric(measures[,outcome_column])
        measures<-measures[,c(2,7,outcome_column)]#leaving us with the hospital name, state and outcome
        split_measures<-split(measures,measures[,2])#splitting by state

        #
        for (i in 1:length(split_measures))
        {
                state_measures<-as.data.frame(split_measures[i])


                for (j in  1:length(split_measures))
                {

                }



        
         }
       
        
        
}