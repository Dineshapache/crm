({
      getAccountRecord : function( component ) 
    {
        
		//Calling Apex class controller 'getAccountRecord' method
        var action = component.get("c.getAccountRecord"); 

        action.setCallback(this, function(response) {
		
			//Checking response status
            var state = response.getState(); 

            if (component.isValid() && state === "SUCCESS")
                // Adding values in Aura attribute variable. 
                component.set("v.accLst", response.getReturnValue());  
              
        });
        $A.enqueueAction(action)
    }
})