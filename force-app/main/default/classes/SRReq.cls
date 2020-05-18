public class SRReq
 {
    @AuraEnabled
    public static List<Service_Request__c> getAccountRecord()
   {
       List<Service_Request__c> AccList = New List<Service_Request__c>();
       AccList = [Select id,Name,SR_Status__c,SR_Type__c from Service_Request__c LIMIT  100];
       return AccList;
    }
}