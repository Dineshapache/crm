({
    picklistsearch : function(component) 
    {
        var action = component.get("c.getPickListValuesIntoList");
        action.setParams({
            objectType: 'dineshapache__Candidate_Details__c' ,
            selectedField: 'dineshapache__City__c'
        });
        action.setCallback(this, function(response) 
           {
            var list = response.getReturnValue();
           // component.set("v.picklistValues", list);
            var hmsg =component.getEvent("Pick");
        		//alert(hmsg);
        	hmsg.setParams({"msg":list});
        	hmsg.fire();   
        })
        $A.enqueueAction(action);
    }
})