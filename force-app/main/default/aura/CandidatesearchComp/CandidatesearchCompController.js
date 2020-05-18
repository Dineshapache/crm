({
	Search : function(component, event, helper) 
    {   
        var vaClient = component.find("nameopp").get("v.value") ;       
        if(vaClient == null  || vaClient == 'undefined')
        {
            alert('Please Enter the Country Name');
        }
        else
        {  
            helper.searchhelper(component);
        }        
	},
      
    Search : function(component, event, helper) 
    {   
             
	}
    
    
})