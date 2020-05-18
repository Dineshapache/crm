trigger term on dineshapache__Term__c (after update)
{
            list<dineshapache__Invoice__c> inn = new list<dineshapache__Invoice__c>() ;
            list<dineshapache__Consolidate__c> cn = new list<dineshapache__Consolidate__c>() ;
            list<dineshapache__Consolidate__c > cs = new list<dineshapache__Consolidate__c >() ;
            Set<string> patIds = new Set<string>();
            Set<string> OIds = new Set<string>();
    if(trigger.isupdate)
        {  
            
            for(dineshapache__Term__c  c : Trigger.new)
                {
                    patIds.add(c.id);
                } 
                inn = [select id from dineshapache__Invoice__c where dineshapache__Term__c =:patids] ;
                for(dineshapache__Invoice__c  i : inn)
                {
                            OIds.add(i.id);
                }
                 cn = [select id from dineshapache__Consolidate__c where dineshapache__Invoice__c =:OIds];
                 if(cn.size() > 0)
                 {
                 for(dineshapache__Consolidate__c  cc : cn)
                 {
                           
                    cc.dineshapache__Update_field__c = 'Dinesh';
                    cs.add(cc);
                 }
                  update cs;
                  }  
                
        }    
        }