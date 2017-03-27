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
        
        ## choosing column
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
        
        ## subsetting the particular state
        state_measures<-measures[measures[,7]==state,]
        state_measures<-state_measures[state_measures[,outcome_column]!="Not Available",]
        
 state_measures       
}