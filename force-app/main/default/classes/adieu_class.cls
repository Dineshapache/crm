@RestResource(urlMapping='/Servicefarewellmessage/*')
global with sharing class adieu_class 
{
    @HttpGet
    global static String communicationdetails()
    {   
        string Message = '';
        RestRequest req = RestContext.request;
        String optin = req.params.get('farewell');
        if (optin == 'Yes')
        {
            Message = 'My Email id is dinesh9043@gmail.com and mobile number : +91-9840533540';
        }
        else
        {
            system.debug('you dont have a choice');
            Message = 'My Email id is dinesh9043@gmail.com and mobile number : +91-9840533540';
        }
        return Message;
    }
}