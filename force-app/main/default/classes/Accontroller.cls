Public with sharing class Accontroller 
{  //d
@AuraEnabled
    public static Account RecordCreate(Id ac) 
    { 
        return [SELECT Name,id FROM Account WHERE Id = :ac];
    }
}