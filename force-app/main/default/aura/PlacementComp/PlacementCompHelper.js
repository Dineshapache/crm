({
	Inserthelper : function(component) 
	{
		var varClient = component.get("v.placLst");
		var action = component.get("c.RecordCreate");
				action.setParams
				({
				client : varClient
				});
		action.setCallback(this,function(response)
		{
			var state = response.getState();
          			if(state == "SUCCESS")
			{
				
				 
				alert('Placement Record has been Created') ;   
			}
			else 
				{
				alert('Error in calling server side action');
				}
		});
	
	$A.enqueueAction(action);
    }
})