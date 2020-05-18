trigger MyfirstTrigger on Lead (before update) 
{
for (lead l : Trigger.new)  // For Each Loop
    {
    
       l.FirstName='Dinesh';
       l.LastName='Kumar';
       l.Status='Open';      
    }
    
}