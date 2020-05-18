({
	handleComponentEvent : function(component, event) 
    {
        var sel = component.find('Country').get('v.value');
        component.set("v.con",sel);
    	var varMessage = event.getParam("message");
        alert(varMessage);
	}
})