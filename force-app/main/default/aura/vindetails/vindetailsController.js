({
	submit : function(component, event, helper) 
    {   
        var vpin = component.find("Candidateform3").get('v.value');
		var cmpevent = component.getEvent("bubblingEvent");
        cmpevent.setParams({"ComponentAction":'Vinnext'});
        cmpevent.setParams({"vvpin":vpin});
        cmpevent.fire();
	}
    
})