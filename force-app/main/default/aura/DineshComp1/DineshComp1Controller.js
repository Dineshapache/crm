({
	callme : function(component, event, helper) 
    {
        var firstName = component.find("test").get("v.value"); 
		alert('Hi '+firstName+' Welcome');
	}
})