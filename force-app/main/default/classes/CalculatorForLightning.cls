public class CalculatorForLightning {

    @AuraEnabled
    public static integer GetSum(integer a, integer b)
  	 {
       return a + b ;
     }
    
    @AuraEnabled
    public static integer GetSub(integer a, integer b)
  	 {
       return a - b ;
     }
    
    @AuraEnabled
    public static integer GetMul(integer a, integer b)
  	 {
       return a * b ;
     }
    
    @AuraEnabled
    public static integer GetDiv(integer a, integer b)
  	 {
       return a / b ;
     }
}