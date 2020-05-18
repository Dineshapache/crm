trigger Dinesh on Test__c (after insert) 
{
 for(Test__C onetest : Trigger.new)
 { 
     system.debug('DineshStart' + onetest.Id);
    // onetest.Desc__c = 'Dinesh' + onetest.Name ;
    // update onetest;
        system.debug('Second Stage :'+onetest.Name);
     DineshClass.DineshMethod(onetest);
 }
}