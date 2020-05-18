public class CandidateCreation 
{
    @AuraEnabled
    public static dineshapache__Candidate_Details__c RecordCreate(dineshapache__Candidate_Details__c client)
    {
		insert client;
        return client;
	}
}