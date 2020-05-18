({
	doInit : function(component, event, helper) 
    {
			var interval = setInterval($A.getCallback(function () 
                                                      {
            var progress = component.get('v.progress');
            component.set('v.progress', progress === 100 ? clearInterval(interval) : progress + 5);
        }), 1000);
	}
})