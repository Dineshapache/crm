@RestResource(urlMapping='/ApiCallouts/*')
global with sharing class APICalls 
{	
    public static List<pricebook2> newprice = new list<pricebook2>(); 
    @HttpPost
    global Static string Createpricebook()
    {	
        RequestHelper OrderWrapper = new RequestHelper();
        system.debug('REquest'+RestContext.request.requestBody.tostring());
        OrderWrapper = (RequestHelper)System.JSON.deserialize(RestContext.request.requestBody.tostring(),RequestHelper.class);
        System.debug('>>>>>>>>>:'+OrderWrapper);
        channelprogram acc = new channelprogram();
        system.debug('Print '+OrderWrapper);
        acc.name = OrderWrapper.name;
        insert acc;
        list<ChannelProgramLevel> contactsToInsert = new list <ChannelProgramLevel>();
        for (RequestHelper.records c : OrderWrapper.ChannelProgramLevels.records) 
        {	
            ChannelProgramLevel level = new ChannelProgramLevel();
            level.ProgramId = acc.id;
            level.name = c.Name;              
            contactsToInsert.add(level);
        }
        insert contactsToInsert;
        return 'inserted';
        /* RestRequest req = RestContext.request;
String strAccId = '';
strAccId = req.params.get('ied');
system.debug('Parameter Passing '+strAccId);
// List<pricebook2> books = (List<pricebook2>) JSON.deserialize(req.requestBody.toString(),List<pricebook2>.class);
list<pricebook2> books = [select id,name,IsActive from pricebook2 where id =:strAccId];
for(pricebook2 g :books )
{		
g.IsActive = true;
newprice.add(g);
}
update newprice;
if(newprice.size() >0)
{
return 'Success';
}
else
{
return 'Fail';
} */
    }
}