Public with sharing class Accontroller 
{  
@AuraEnabled
    public static Account RecordCreate(Id ac) 
    { 
        return [SELECT Name,id FROM Account WHERE Id = :ac];
    }
}