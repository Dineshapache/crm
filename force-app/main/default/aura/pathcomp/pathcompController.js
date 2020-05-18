({
    doint : function (component, event, helper) 
    {  
       var toggletext = component.find("templatediv");
       $A.util.addClass(toggletext,'toggle') ;
       toggletext = component.find("previewdiv");
       $A.util.addClass(toggletext,'toggle');
       toggletext = component.find("confirmdiv");
       $A.util.addClass(toggletext,'toggle');
    },
    
    handleBubbling : function (component, event, helper) 
    {
       var evnt = event.getParams();
       var act =  evnt.ComponentAction;
       var vvpin = evnt.vvpin;
       component.set("v.VIN",vvpin);
       switch(act)
        {
                
            case "Vinnext":
             var detaildiv = component.find("detailsdiv");
             $A.util.addClass(detaildiv,'toggle') ;
             var tempdiv = component.find("templatediv");
             $A.util.removeClass(tempdiv,'toggle') ;
             var detailtoggle = component.find("detailsindicator");
             $A.util.removeClass(detailtoggle,'slds-tabs--path__item slds-is-current') ;
             $A.util.addClass(detailtoggle,'slds-tabs--path__item slds-is-complete') ;
             var templatetoggle = component.find("templateindicator");
             $A.util.removeClass(templatetoggle,'slds-tabs--path__item slds-is-incomplete') ;
             $A.util.addClass(templatetoggle,'slds-tabs--path__item slds-is-current') ;  
             break;
            case "Vinback":
             var detaildiv = component.find("detailsdiv");
             $A.util.removeClass(detaildiv,'toggle') ;
             var tempdiv = component.find("templatediv");
             $A.util.addClass(tempdiv,'toggle') ;
             var detailtoggle = component.find("detailsindicator");
             $A.util.addClass(detailtoggle,'slds-tabs--path__item slds-is-current') ;   
             var templatetoggle = component.find("templateindicator");
             $A.util.removeClass(templatetoggle,'slds-tabs--path__item slds-is-current') ;   
             $A.util.addClass(templatetoggle,'slds-tabs--path__item slds-is-incomplete') ;
             break;
            case "infonext":
             var detaildiv1 = component.find("detailsdiv");
             $A.util.addClass(detaildiv1,'toggle') ;
             var tempdiv1 = component.find("templatediv");
             $A.util.addClass(tempdiv1,'toggle') ;
             var audio1 = component.find("previewdiv");
             $A.util.removeClass(audio1,'toggle') ;   
             var detailtoggle1 = component.find("detailsindicator");
             $A.util.addClass(detailtoggle1,'slds-tabs--path__item slds-is-complete') ;   
             var templatetoggle1 = component.find("templateindicator");
             $A.util.removeClass(templatetoggle1,'slds-tabs--path__item slds-is-current') ;   
             $A.util.addClass(templatetoggle1,'slds-tabs--path__item slds-is-complete') ;            
             var audiotoggle1 = component.find("audiotemplate");
             $A.util.removeClass(audiotoggle1,'slds-tabs--path__item slds-is-incomplete') ;   
             $A.util.addClass(audiotoggle1,'slds-tabs--path__item slds-is-current') ;  
             break;
			 case "finnext":
             var detaildiv1 = component.find("detailsdiv");
             $A.util.addClass(detaildiv1,'toggle') ;
             var tempdiv1 = component.find("templatediv");
             $A.util.addClass(tempdiv1,'toggle') ;
             var audio1 = component.find("previewdiv");
             $A.util.addClass(audio1,'toggle') ;
			 var inforid1 = component.find("confirmdiv");
             $A.util.removeClass(inforid1,'toggle') ;    
             var detailtoggle1 = component.find("detailsindicator");
             $A.util.addClass(detailtoggle1,'slds-tabs--path__item slds-is-complete') ;   
             var templatetoggle1 = component.find("templateindicator");
             $A.util.removeClass(templatetoggle1,'slds-tabs--path__item slds-is-current') ;   
             $A.util.addClass(templatetoggle1,'slds-tabs--path__item slds-is-complete') ;            
             var audiotoggle1 = component.find("audiotemplate");
             $A.util.removeClass(audiotoggle1,'slds-tabs--path__item slds-is-current') ;   
             $A.util.addClass(audiotoggle1,'slds-tabs--path__item slds-is-complete') ;
             var infoggle1 = component.find("infoindicator");
             $A.util.removeClass(infoggle1,'slds-tabs--path__item slds-is-incomplete') ;   
             $A.util.addClass(infoggle1,'slds-tabs--path__item slds-is-current') ;     
             break;
             case "finback":
             var detaildiv1 = component.find("detailsdiv");
             $A.util.addClass(detaildiv1,'toggle') ;
             var tempdiv1 = component.find("templatediv");
             $A.util.removeClass(tempdiv1,'toggle') ;
             var audio1 = component.find("previewdiv");
             $A.util.addClass(audio1,'toggle') ;   
             var detailtoggle1 = component.find("detailsindicator");
             $A.util.addClass(detailtoggle1,'slds-tabs--path__item slds-is-complete') ;   
             var templatetoggle1 = component.find("templateindicator"); 
             $A.util.addClass(templatetoggle1,'slds-tabs--path__item slds-is-current') ;            
             var audiotoggle1 = component.find("audiotemplate");
             $A.util.removeClass(audiotoggle1,'slds-tabs--path__item slds-is-current') ;   
             $A.util.addClass(audiotoggle1,'slds-tabs--path__item slds-is-incomplete') ;  
             break;   
             
        }
        
    }
})