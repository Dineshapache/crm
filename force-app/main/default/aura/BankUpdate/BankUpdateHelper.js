({
	UpdateBankHelper : function(component) {
		var email = component.find("currentClientBasedOnEmail").get("v.value");
        var upemail = component.find("UpdateClientBasedOnEmail").get("v.value");
        if((email) == (upemail))
           {
            alert('Mail Id Should not be Same');
            return;
    		}
        var action = component.get("c.UpdateEmail");
        action.setParams({
            custEmail : email ,
            custUpemail : upemail
        });
        action.setCallback(this, function(response) 
           {
               
        if (response.getState() === "SUCCESS") 
        {
             
            alert('Record has been Updated');          
         }
                    else if (response.getState() === "ERROR") 
                    {
            alert('Record is not Updated , Please Check the Source Value');
        			}  
              
           
        });
        $A.enqueueAction(action);
                }
	
})