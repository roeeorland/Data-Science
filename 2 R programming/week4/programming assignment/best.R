best<-function(state,outcome)
{
        
        measures<-read.csv("outcome-of-care-measures.csv", colClasses = "character")
        
        
        ##is the state valid
        boolean<-FALSE
        for (i in 1:length(measures[,7]))
        {
                if (measures[i,7]==state)
                {
                        boolean<-TRUE
                }
        }
        
        
        
        if (!boolean)
        {
                stop("invalid state")
            
        }
        
        
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
        
## subsetting the particular state, getting rid of NAs, creating a 2-column matrix
        state_measures<-measures[measures[,7]==state,]
        state_measures<-state_measures[state_measures[,outcome_column]!="Not Available",]
        state_measures<-cbind(state_measures[,2],state_measures[,outcome_column])
        
        
## finding lowest mortality rate and, in case of a tie, alphabetical sorting
        x<-1
        for(i in 2:length(state_measures[,1]))
        {
                if ((as.numeric(state_measures[x,2])>as.numeric(state_measures[i,2]))||(((as.numeric(state_measures[x,2])>as.numeric(state_measures[i,2])))&&(state_measures[i,1]<state_measures[x,1])))
                   
                        x<-i
        }
        state_measures[x,1]

     
      
        
}
        
        
        
        
        
        
        
        
        
        
        


