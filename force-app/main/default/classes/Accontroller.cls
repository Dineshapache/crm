Public with sharing class Accontroller 
{  
@AuraEnabled
    public static Account RecordCreate(Id ac) 
    { // Dinesh Kumar alerted
        return [SELECT Name,id FROM Account WHERE Id = :ac];
    }
}