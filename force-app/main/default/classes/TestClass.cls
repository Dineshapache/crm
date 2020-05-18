@isTest
public class TestClass 
{
   @istest Static void test()
   {
       lead l = new lead();
       l.FirstName='Dinesh';
       l.LastName='Kumar';
       l.Status='Open';  
       l.Company = 'Dinesh';
       insert l;
       l.status = 'closed';
       update l;
   }
}