({    
    onDragOver: function(component, event) {
        event.preventDefault();
    },

    onDrop: function(component, event, helper) {
		event.stopPropagation();
        event.preventDefault();
        event.dataTransfer.dropEffect = 'copy';
        var files = event.dataTransfer.files;
        if (files.length>1) {
            return alert("You can only upload one profile picture");
        }
        helper.readFile(component, helper, files[0]);
	},
    
    back : function(component, event, helper) 
    {
        var vpin = component.find("inf").get('v.value');
        var cmpevent = component.getEvent("bubblingEvent");
        cmpevent.setParams({"ComponentAction":'finback'});
        cmpevent.setParams({"vvpin":vpin});
        cmpevent.fire();
		
	},
    
    submit : function(component, event, helper) 
    {   
        var cmpevent = component.getEvent("bubblingEvent");
        cmpevent.setParams({"ComponentAction":'finnext'});
        cmpevent.fire();
		
	}
    
})