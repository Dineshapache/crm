({
	searchhelper : function(component,event) 
 {   
        var varClient = component.get('v.selcountry');
		var action = component.get('c.Recordsearchc');
        action.setParams
				({
				client : varClient
				});
     
	action.setCallback(this,function(response)
		{  
            // alert(response.getReturnValue());
            var status ;
			var state = response.getState();
            alert(response.getReturnValue());
   			if(response.getReturnValue()=='Success')
			{
                var evt = component.getEvent("cmpEventName");
                evt.setParams({ "message": "SUCCESS"});
                evt.fire();	  
			}
			else 
				{
				var evt = component.getEvent("cmpEventName");
                evt.setParams({ "message": "Failed"});
                evt.fire();
				}
		});
 
	$A.enqueueAction(action);
    

}   
})