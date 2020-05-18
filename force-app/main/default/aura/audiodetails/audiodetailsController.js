({
	back : function(component, event, helper) 
    {
        var cmpevent = component.getEvent("bubblingEvent");
        cmpevent.setParams({"ComponentAction":'Vinback'});
        cmpevent.fire();
		
	},
    
    submit : function(component, event, helper) 
    {
        var vpin = component.find("can").get('v.value');
        var cmpevent = component.getEvent("bubblingEvent");
        cmpevent.setParams({"ComponentAction":'infonext'});
        cmpevent.setParams({"vvpin":vpin});
        cmpevent.fire();
		
	}
})