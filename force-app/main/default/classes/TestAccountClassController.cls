public class TestAccountClassController
{
public Account NewAccountinfo{get;set;}
public Service_Request__c NewsrInfo{get;set;}
public list<Service_Request__c> SR {get;set;}
public list<Service_Request__c> praFaciList {get;set;}
public String AccountID {get;set;}
public String PhoneID {get;set;}
public boolean DineshFlag {get;set;}
public boolean PRacFlag {get;set;}
public boolean srSizeFlag {get;set;}
public boolean ShowSRCreation {get;set;}
public String appId {get;set;}
public String SRd {get;set;}
public String faciId{get;set;}
public TestAccountClassController(ApexPages.StandardController controller)
{       DineshFlag = False ;
        PRacFlag = False ;
        srSizeFlag = False;
        ShowSRCreation = True;
        NewAccountinfo = (Account)controller.getRecord();
        appId = ApexPages.currentPage().getParameters().get('id');
        NewsrInfo = new Service_Request__c ();
        if(appId != null && appId != '')
        {
            NewAccountinfo = [select FirstName__c,id,LastName__c,Name,AccountNumber,Industry,phone from Account where id =: appId ];
            SR = [select Id,Sub_Type__c,Name,SR_Type__c,SR_Status__c from Service_Request__c where Account__c = : appId ] ;     
        }
        if(SR.size() > 0)
        srSizeFlag = True;
        else
        srSizeFlag = False;
        for(Service_Request__c s : SR)
        {
          if(s.SR_Status__c == 'Working')   
            {
             ShowSRCreation = False ;
             ApexPages.addmessage(new ApexPages.message(ApexPages.severity.FATAL,'Please Close the Open SR'));
            }
        }
        
     if(NewAccountinfo.Name != 'Dinesh')
        DineshFlag = True;
        else
        DineshFlag = False;  
      
}
public void ShowSRDetails() 
        {
        praFaciList  = new List<Service_Request__c>();
        praFaciList = [SELECT Id,Sub_Type__c,Name,SR_Type__c,SR_Status__c  from Service_Request__c where id =:faciId];
        //system.debug(SRd);
        if(praFaciList.size() > 0)
        PRacFlag = True;
        else
        PRacFlag = false;
        }
/*public PageReference NewApplication()
{        
        NewAccountinfo = new account();
        return null;
}*/
                public PageReference saveApplication() 
                    {   
                        NewAccountinfo.Description  = 'Updated By '+NewAccountinfo.Name ;
                        update NewAccountinfo;
                        AccountID = NewAccountinfo.id;
                        NewsrInfo.Account__c = AccountID ;
                        NewsrInfo.sr_Status__c = 'Open';
                        if(NewsrInfo.SR_Type__c != NULL)
                        {
                        
                            insert NewsrInfo;
                            string name = NewsrInfo.name;
                           // system.debug(name);
                              Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                            String[] toAddresses = new String[] {'Krishna.Yenumula@conduent.com'};
                            //mail.setToAddresses(toAddresses);
                            mail.setSenderDisplayName('Salesforce Keryx Support');    
                            mail.setSubject('New SR Created');
                            mail.setBccSender(false);
                            mail.setPlainTextBody('SR has been Assigned, Kindly Login the Application and Check the Assigned Work');    
                            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
                            PageReference pageRef = new PageReference('/'+ AccountID);
                            pageRef.setRedirect(true);
                            return pageRef;
                            
                        }
                        else
                        {
                        ApexPages.addmessage(new ApexPages.message(ApexPages.severity.FATAL,'Please Select SR Type'));
                        return null;
                        }
                     }
                    public PageReference CancelApplication() 
                    {   
                       
                        PageReference pageRef = new PageReference('/'+ appId);
                        pageRef.setRedirect(true);
                        return pageRef;
                                                
                    }
}