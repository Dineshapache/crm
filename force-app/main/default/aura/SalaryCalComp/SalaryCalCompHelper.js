({
	CallHelper : function(component) 
    {
		var Tech = component.find("Technology").get("v.value");
        var Exp = component.find("Experience").get("v.value");
        var action = component.get("c.SalSearch");
        	action.setParams
				({
				te : Tech ,
                ex :  Exp 
				});
        			action.setCallback(this,function(response)
		{
			var state = response.getState();
            var salr = response.getReturnValue() ;
          			if(state == "SUCCESS")
			{				 
				alert(salr) ;   
			}
			else 
				{
					alert('Error in calling server side action');
				}
		});
	
	$A.enqueueAction(action);
    }
})