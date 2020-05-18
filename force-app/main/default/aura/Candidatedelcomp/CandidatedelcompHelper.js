({
	delhelper : function(component) 
    {
		var varClient = component.find("Mailid").get("v.value") ;
		var action = component.get("c.Recorddel");
        action.setParams
				({
				client : varClient
				});
action.setCallback(this,function(response)
		{
			var state = response.getState();
          			if(state == "SUCCESS")
			{
                var op = response.getReturnValue() ;
                if(op == "Success")                 
				//component.set("v.Cansearch", response.getReturnValue());
				alert('Mail id has been Deleted' + response.getReturnValue()) ;   
                else
                 alert('Mail id not in System') ;   
			}
			else 
				{
				alert('Mail id is not in System');
				}
		});
	
	$A.enqueueAction(action);
    }
})