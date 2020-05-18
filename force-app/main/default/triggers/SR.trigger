trigger SR on Service_Request__c (before update)
{
        if(Trigger.isBefore)
        {
            if(Trigger.isupdate)
                {
                    for (Service_Request__c  s :trigger.new)
                    {   if(s.dineshapache__SR_Type_History__c == '')
                        {
                            s.dineshapache__SR_Type_History__c= s.dineshapache__SR_Type__c;  
                        }
                        else
                        {
                            string his = s.dineshapache__SR_Type_History__c ;
                            s.dineshapache__SR_Type_History__c = his + '\n' + s.dineshapache__SR_Type__c ;
                        }
                    }   
        }        }

}