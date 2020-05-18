public class Candidatesearch
{
		 @AuraEnabled
    public static List<dineshapache__Candidate_Details__c> Recordsearch(String client) 
    {   
        List<dineshapache__Candidate_Details__c> cand =  [SELECT dineshapache__First_Name__c, dineshapache__Last_Name__c, dineshapache__Country__c,dineshapache__Age__c FROM dineshapache__Candidate_Details__c 
                                                          where  dineshapache__Country__c =: client];
        return cand;
    }
    	 @AuraEnabled
    public static string Recordsearchc(String client) 
    {   
        List<dineshapache__Candidate_Details__c> cand =  [SELECT dineshapache__First_Name__c, dineshapache__Last_Name__c, dineshapache__Country__c,dineshapache__Age__c FROM dineshapache__Candidate_Details__c 
                                                              where  dineshapache__Country__c =: client];
         if(cand.size() >0)
         {
            String Status = 'Success';
            return Status;
         }
        else
        {
            String Status = 'Failed';
            return Status;
        }
    }
    	 @AuraEnabled
    public static String Recorddel(String client) 
    {
        List<dineshapache__Candidate_Details__c> cand =  [SELECT dineshapache__First_Name__c, dineshapache__Last_Name__c, dineshapache__Country__c,dineshapache__Age__c FROM dineshapache__Candidate_Details__c 
                                                          where  dineshapache__Email__c  =: client];
        if(cand.size() >0)
        {    String Status = 'Success';
         
       		 delete cand;
             Return Status ;
        }
        else
        {
            String Status = 'Fail';
            return Status;
        }
    }
}