trigger TestTrigger on Test__c (before insert)
{   string check = 'One';
    for(Test__C onetest : Trigger.new)
 { 
     system.debug('DineshStart' + onetest.Id);
     onetest.Desc__c = 'Dinesh' + onetest.Name ;
     If(check==onetest.Name)
     {
       onetest.Desc__c = 'Dinesh' + onetest.Name ;  
     }
     else
     {
         onetest.Desc__c = 'Kumar' + onetest.Name ;
     }
     
      }
}