public class Bank 
{
@AuraEnabled
public static Bank__c CreateClient(Bank__c acc) {
insert acc;
return acc;
}
    @AuraEnabled
    public static string deleteCustomerDetails(String custEmail)
   {
       Bank__c custDetailBasedonEmail = new Bank__c();
       String status;
       custDetailBasedonEmail = [Select id from Bank__c where Email__c = : custEmail Limit 1];
       if(custDetailBasedonEmail != null)
       {
			delete custDetailBasedonEmail;  
           status = 'Customer details with email '+custEmail+' is deleted.';
       } else 
       {
           status = 'No Customer details available with email: '+custEmail;
       }
       return status;
    }
    @AuraEnabled
    public static string UpdateEmail(String custEmail,String custUpemail)
   {
       Bank__c custDetailBasedonEmail = new Bank__c();
       String status;
       custDetailBasedonEmail = [Select id from Bank__c where Email__c = : custEmail Limit 1];
       if(custDetailBasedonEmail != null)
       {
			custDetailBasedonEmail.Email__c= custUpemail; 
           update custDetailBasedonEmail;
           status = 'Customer details with email '+custUpemail+' has been updated.';
       } else 
       {
           status = 'No Customer details available with email: '+custEmail;
       }
       return status;
    }

}