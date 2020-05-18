public class SalaryCalculator 
{
				@AuraEnabled
    public static String SalSearch(String te ,integer ex)
    {
        Integer Exp = Integer.valueOf(ex);
		String Sal ;
        if((te == 'Salesforce') && (Exp > 5))
        { 
               sal = 'Salary is 15k USD';
           	 return Sal;
        }		
		else
            { 
               sal = 'Salary is 10k USD';
            return Sal;
        }	
		
    }
}