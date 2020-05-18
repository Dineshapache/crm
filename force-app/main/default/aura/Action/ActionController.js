({
	doInit : function(component, event, helper) 
{  
    var accid = component.get("v.recordId");
    var action = component.get("c.RecordCreate");
         action.setParams
				({
				ac : accid
				});
    		action.setCallback(this,function(response)
		{
			var state = response.getState();
          			if(state == "SUCCESS")
			{	 
				component.set("v.account", response.getReturnValue());
			}
			else 
				{
				alert('Error in calling server side action');
				}
		});
	
	$A.enqueueAction(action);		
}
});