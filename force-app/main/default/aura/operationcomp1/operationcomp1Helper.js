({
      SumHelper : function( component ) {
        
		 var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
    
            var action = component.get("c.GetSum");

           action.setParams({
               a : NumA,
               b : NumB
                 });

    action.setCallback(this, function(response) {
        if (response.getState() === "SUCCESS") {

            alert('Sum is = ' + response.getReturnValue());          
			} 
        else if (response.getState() === "ERROR") {
            alert('Error came = ' + a.getError());
        }  
              
        });
        $A.enqueueAction(action);
   },
    //-----------------------------------------------------
    SubHelper : function( component ) {
        
		 var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
    
            var action = component.get("c.GetSub");

           action.setParams({
               a : NumA,
               b : NumB
                 });

    action.setCallback(this, function(response) {
        if (response.getState() === "SUCCESS") {

            alert('Subraction is = ' + response.getReturnValue());          
			} 
        else if (response.getState() === "ERROR") {
            alert('Error came = ' + a.getError());
        }  
              
        });
        $A.enqueueAction(action);
    },
    
    //-----------------------------------------------------
                
   MulHelper : function( component ) {
        
		 var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
    
            var action = component.get("c.GetMul");

           action.setParams({
               a : NumA,
               b : NumB
                 });

    action.setCallback(this, function(response) {
        if (response.getState() === "SUCCESS") {

            alert('Multiplication is = ' + response.getReturnValue());          
			} 
        else if (response.getState() === "ERROR") {
            alert('Error came = ' + a.getError());
        }  
              
        });
        $A.enqueueAction(action);
   },
	//-----------------------------------------------------
    DivHelper : function( component ) {
        
		 var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
   
            var action = component.get("c.GetDiv");

           action.setParams({
               a : NumA,
               b : NumB
                 });

    action.setCallback(this, function(response) {
        if (response.getState() === "SUCCESS") {

            alert('Division is = ' + response.getReturnValue());          
			} 
        else if (response.getState() === "ERROR") {
            alert('Error came = ' + a.getError());
        }  
              
        });
        $A.enqueueAction(action);
 }
})