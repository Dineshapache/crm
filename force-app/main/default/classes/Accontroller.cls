Public with sharing class Accontroller 
{  //Dinesh Kumar K No fire
@AuraEnabled
    public static Account RecordCreate(Id ac) 
    { 
        return [SELECT Name,id FROM Account WHERE Id = :ac];
    }
}