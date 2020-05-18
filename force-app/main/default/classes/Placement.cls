public class Placement 
{
		@AuraEnabled
    public static dineshapache__Placement_Details__c RecordCreate(dineshapache__Placement_Details__c client)
    {
		insert client;
        return client;
	}
}