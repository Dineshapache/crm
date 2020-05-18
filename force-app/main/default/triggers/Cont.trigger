trigger Cont on Contact (after update)
{
          list<Opportunity> opp = new list<Opportunity>() ;
            Set<string> patIds = new Set<string>();
            Set<string> OIds = new Set<string>();
    if(trigger.isupdate)
        {  
            
            for(contact c : Trigger.new)
                {
                    patIds.add(c.id);
                } 
                opp = [select id,IsPrivate,LeadSource  from opportunity where dineshapache__Contact__c =:patids] ;
                if(opp.size() > 0)
                {
                if(opp[0].IsPrivate == false)
                    {
                        opp[0].LeadSource = 'Web';
                        OIds.add(opp[0].id);                 
                    }
                    update opp ;
                    for(opportunity o : opp)
                    {
                    system.debug(o);
                    Task T = new Task();
                    t.WhoId = o.id;
                    t.Priority= 'Normal';
                    t.status='In Progress';
                    t.Subject ='Lead Creation';
                    insert t;
                    }
                } 
                
        }
    }