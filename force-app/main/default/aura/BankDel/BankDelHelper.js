({
       deleteCustomerDetailHelper : function(component) {
        var email = component.find("DeleteClientBasedOnEmail").get("v.value");
        var action = component.get("c.deleteCustomerDetails");
        action.setParams({
            custEmail :email
                 });
        action.setCallback(this, function(response) 
           {
               
        if (response.getState() === "SUCCESS") 
        {
             
            alert('Record has been Deleted');          
         }
                    else if (response.getState() === "ERROR") 
                    {
            alert( 'Deletion has been failed');
        			}  
              
           
        });
        $A.enqueueAction(action);
                }
})