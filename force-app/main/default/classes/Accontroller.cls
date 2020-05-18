Public with sharing class Accontroller 
{ // Dinesh Added
@AuraEnabled
    public static Account RecordCreate(Id ac) 
    {
        // Perform isAccessible() checks here
        return [SELECT Name,id FROM Account WHERE Id = :ac];
    }
}