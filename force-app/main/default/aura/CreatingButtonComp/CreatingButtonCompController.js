({
    doInit : function(component) {
        $A.createComponent(
            "lightning:button",
            {
                "aura:id": "MyAuraId",
                "label": "Click Me",
                "onclick": component.getReference("c.handlePress")
            },
            function(newButton, status, errorMessage){
                //Add the new button to the body array
                if (status === "SUCCESS") {
                    var body = component.get("v.body");
                    body.push(newButton);
                    component.set("v.body", body);
                }
                else if (status === "INCOMPLETE") {
                    console.log("No response from server or client is offline.")
                    // Show offline error
                }
                else if (status === "ERROR") {
                    console.log("Error: " + errorMessage);
                    // Show error message
                }
            }
        );
    },

    handlePress : function(component) {
        // Find the button by the aura:id value
        alert("button pressed");
    }
})