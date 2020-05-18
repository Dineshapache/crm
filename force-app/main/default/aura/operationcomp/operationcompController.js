({
    div:function(component) 
    {
        var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
        
            //Wrong
            // var NumC = NumA * NumB;
            
            //Right
            var NumC = parseInt(NumA)  / parseInt(NumB);
            
            alert('NumC = ' + NumC);            
     } ,

  sum: function(component) {
        var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
        
            //Wrong
            // var NumC = NumA + NumB;
            
            //Right
            var NumC = parseInt(NumA)  + parseInt(NumB);
            
            alert('NumC = ' + NumC);            
     } ,

  sub: function(component) {
        var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
        
            //Wrong
            // var NumC = NumA - NumB;
            
            //Right
            var NumC = parseInt(NumA)  - parseInt(NumB);
            
            alert('NumC = ' + NumC);            
     } ,

  mul: function(component) {
        var NumA = component.find("FirstNumber").get("v.value");
            var NumB = component.find("SecondNumber").get("v.value");
        
            //Wrong
            // var NumC = NumA * NumB;
            
            //Right
            var NumC = parseInt(NumA)  * parseInt(NumB);
            
            alert('NumC = ' + NumC);            
     }
})