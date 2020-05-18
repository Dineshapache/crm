({
	wikiCallOut : function(component) {
        
        var txtToSearch = component.get('v.txtWikiText');
        var resLimit = component.get('v.resultLimit');
        var action = component.get('c.getWikiResponse');
        action.setParams
        ({
            searchText : txtToSearch,
            searchLimit : resLimit
        });
        
        action.setCallback(this, function(a) 
             {
                 alert(a.getState());
            if (a.getState() === 'SUCCESS') {
                component.set("v.Result", a.getReturnValue()); 
            }  
        });
        $A.enqueueAction(action);   
	}    
})