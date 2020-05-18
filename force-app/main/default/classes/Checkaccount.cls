@RestResource(urlMapping='/Checkaccount/ShowAccounts/*')
global with sharing class Checkaccount
{
    @HttpGet
    global static List<dineshapache__Service_Request__c> getsr()
        {
          RestResponse res=RestContext.response;
          RestRequest req =RestContext.request;
          string Accountid = req.requestURI.substring(req.requestURI.lastindexof('/')+1);
          
         List<dineshapache__Service_Request__c> sr ; 
          sr = [select dineshapache__Account__c,dineshapache__SR_Status__c,dineshapache__SR_Type__c from dineshapache__Service_Request__c where id =: Accountid];
          return sr;
         }
 }