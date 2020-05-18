public class Dineshclass {
    public static void DineshMethod(Test__c o)
    {
      Exam__c exam = new Exam__c();
        system.debug(o.Id);
        exam.Test__c = o.Id;
        exam.name = 'Krishna';
        insert exam;
    }
    

}