({
	fir : function(component, event, helper)
    { 
		var hmsg =component.getEvent("Accident");
        //alert(hmsg);
        hmsg.setParams({"msg":"Please send Ambulance"});
        hmsg.fire();
    }
})