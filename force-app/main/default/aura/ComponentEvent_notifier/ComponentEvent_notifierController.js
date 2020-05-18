({
	fireComponentEvent : function(component, event) {
        // Get the component event by using the 'name' from aura:registerEvent
        var varCmpEvent = component.getEvent("cmpEventName");
        
        varCmpEvent.setParams({
            "message" : "This message is passed by Component event!!"
			});
        varCmpEvent.fire();
    }
})