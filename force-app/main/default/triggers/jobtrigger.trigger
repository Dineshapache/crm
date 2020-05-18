trigger jobtrigger on job__c (after update)
 {
    if(trigger.isafter)
    {
     if(trigger.isupdate)
     {
     
         for( dineshapache__job__c j :trigger.new)
         {
           string jo = j.id;    
           list<dineshapache__job__c> dj = new list<dineshapache__job__c>();
           dj = [select id ,( select id ,dineshapache__job__c from dineshapache__Term__r) from dineshapache__job__c where id =:jo ] ;
            if(dj.size() > 0)
           {
              string trid = dj[0].id ;
              list<dineshapache__Term__c> t = new list<dineshapache__Term__c>();     
           }
           }
       }
       }
       }