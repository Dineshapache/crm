({
                BankHelper : function(component)
    {
        var sObject = component.get("v.AttrClient");
        if($A.util.isEmpty(sObject.First_Name__c) || $A.util.isUndefined(sObject.First_Name__c)){
            alert('First Name is Required');
            return;
        }            
        if($A.util.isEmpty(sObject.Last_Name__c) || $A.util.isUndefined(sObject.Last_Name__c)){
            alert('Last Name is Required');
            return;
        }
        var action = component.get("c.CreateClient");
        action.setParams({
            acc : sObject
                 });
        action.setCallback(this, function(response) {
        if (response.getState() === "SUCCESS") {

            alert('Record saved');          
                                                } 
        else if (response.getState() === "ERROR") {
            alert('Mail Id has been Already Existing , Please Give new mail Id');
        }  
              
        });
        $A.enqueueAction(action);
                }
})