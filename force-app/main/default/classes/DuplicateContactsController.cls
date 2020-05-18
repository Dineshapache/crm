public without sharing class DuplicateContactsController
{
Public transient AggregateResult[] badges {get; set;}
Public list<Contact> contacts {get; set;}
public Set<string> Conid = new Set<string>();
public integer con {get;set;}
public DuplicateContactsController(){}
public PageReference  getContacts()
{   

AggregateResult[] badges = [SELECT id,count(email)cn FROM Contact  GROUP BY id HAVING COUNT(email) > 0] ;
for(AggregateResult ar : badges)
    {
      con = (integer)ar.get('cn');     
      if(con >0) 
      {
      Conid.add(ar.id);
      }
    }
contacts =  [SELECT Email, Name,id FROM Contact where id =: Conid];
return null;     
}
}