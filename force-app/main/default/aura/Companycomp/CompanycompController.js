({
    getMapValues : function(component, event, helper) {
        var action = component.get("c.getMap");
        action.setCallback(this, function(response){
		
			alert('Response from server = ' + response);
			alert('Responses state = ' + response.getState());
			
            var state = response.getState();
            if (state === "SUCCESS"){
                var result = response.getReturnValue();
				alert('Data in result variable = ' + result);
				
				//an collection variable of type array to store the result 
                var arrayMapKeys = [];
				
                for(var key in result)
                {
                    arrayMapKeys.push({key: key, value: result[key]});
                    //alert('Data in result variable = ' + {key: key, value: result[key]});
                }
                component.set("v.mapValues", arrayMapKeys);
                
            }
        });
        $A.enqueueAction(action);
    }
})