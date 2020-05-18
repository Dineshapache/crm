({
	searchhelper : function(component) 
    {   
        
		var varClient = component.find("nameopp").get("v.value") ;
		var action = component.get("c.Recordsearch");
        action.setParams
				({
				client : varClient
				});
	action.setCallback(this,function(response)
		{
			var state = response.getState();
			if(response.getReturnValue().length > 0)
			{   component.set("v.showtbl","true");
				component.set("v.Cansearch", response.getReturnValue());
				alert('Candidate Record has been found') ;   
			}
			else 
				{
                    component.set("v.showtbl","false");
				alert('No Candidate Record has been found');
				}
		});
	
	$A.enqueueAction(action);
    }
})