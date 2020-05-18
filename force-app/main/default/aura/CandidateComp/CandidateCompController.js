({
	road : function(component, event, helper)
    {
		var finmsg =  event.getParam("msg");
        component.set("v.picklistValues",finmsg);
        component.set("v.myBool","True");
        
	} ,  
submit : function(component, event, helper)
    {  	
		helper.Inserthelper(component);
	}, 
 handleValueChange : function(component, event, helper)
    {  	
        var vaClientp = component.get("v.CandLst.dineshapache__Age__c");       
        if(vaClientp == null  || vaClientp == 'undefined')
        {
            alert('Please Enter the Age');
        }
	}
})