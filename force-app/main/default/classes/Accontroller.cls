Public with sharing class Accontroller 
{  //Dinesh Kumar K Fire 
@AuraEnabled
    public static Account RecordCreate(Id ac) 
    { 
        return [SELECT Name,id FROM Account WHERE Id = :ac];
    }
}