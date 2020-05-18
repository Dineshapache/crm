({
                callJSCode : function(component, event, helper) {
                                var varButtonID = event.getSource().getLocalId();
        var firstNumber = component.find("FirstNumber").get("v.value");
        var secondNumber = component.find("SecondNumber").get("v.value");
                                alert('The button which called =' + varButtonID);
        alert('First Number=' + firstNumber);
        alert('Second Number=' + secondNumber);
        var result;
        
        if(varButtonID == 'SumBtn'){
            result = parseInt(firstNumber) + parseInt(secondNumber);
        } else if(varButtonID == 'SubBtn') {
            result = parseInt(firstNumber) - parseInt(secondNumber);
        } else if(varButtonID == 'MulBtn') {
            result = parseInt(firstNumber) * parseInt(secondNumber);
        } else if(varButtonID == 'DivBtn') {
            result = parseInt(firstNumber) / parseInt(secondNumber);
        }
        alert('Result: ' + result);
        //component.set("v.whichButtonPressed", varButtonID);
        component.set("v.whichButtonPressed", result);
                }
})