trigger Afterinsertaccount on Account (after insert) 
{
    if(trigger.isinsert)
    {
        PartnerNetworkConnection conn = [select Id, ConnectionStatus, ConnectionName from PartnerNetworkConnection  where ConnectionStatus = 'Accepted'];
        List<PartnerNetworkRecordConnection> recordConnectionToInsert  = new List<PartnerNetworkRecordConnection>();
        for(account a :  trigger.new)
        {
            if(a.Industry == 'Banking')
            {
                PartnerNetworkRecordConnection newRecord = new PartnerNetworkRecordConnection();
                newRecord.ConnectionId = conn.Id;
                newRecord.LocalRecordId = a.Id;
                newRecord.SendClosedTasks = false;
                newRecord.SendOpenTasks = false;
                newRecord.SendEmails = false;
                recordConnectionToInsert.add(newRecord);
            }
        }
        if(!recordConnectionToInsert.isEmpty())
        {
            insert recordConnectionToInsert;
        }
    }    
}