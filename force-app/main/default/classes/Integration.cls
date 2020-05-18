public class Integration {

    @AuraEnabled
    public static String getWikiResponse(String searchText, Integer searchLimit){
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://en.wikipedia.org/w/api.php?action=opensearch&search=' + searchText +
                        '&limit='+ searchLimit + '&namespace=0&format=json');
		req.setMethod('GET');
        
        Http http = new Http();
		HTTPResponse res = http.send(req);  
		return res.getBody();
    }
}