//Generated by wsdl2apex

public class AsyncSoapSforceComSchemasClassMywebservi {
    public class displayHelloResponse_elementFuture extends System.WebServiceCalloutFuture {
        public String getValue() {
            soapSforceComSchemasClassMywebservi.displayHelloResponse_element response = (soapSforceComSchemasClassMywebservi.displayHelloResponse_element)System.WebServiceCallout.endInvoke(this);
            return response.result;
        }
    }
    public class AsyncMyWebService {
        public String endpoint_x = 'https://ap5.salesforce.com/services/Soap/class/MyWebService';
        public Map<String,String> inputHttpHeaders_x;
        public String clientCertName_x;
        public Integer timeout_x;
        public soapSforceComSchemasClassMywebservi.AllowFieldTruncationHeader_element AllowFieldTruncationHeader;
        public soapSforceComSchemasClassMywebservi.DebuggingInfo_element DebuggingInfo;
        public soapSforceComSchemasClassMywebservi.SessionHeader_element SessionHeader;
        public soapSforceComSchemasClassMywebservi.DebuggingHeader_element DebuggingHeader;
        public soapSforceComSchemasClassMywebservi.CallOptions_element CallOptions;
        private String AllowFieldTruncationHeader_hns = 'AllowFieldTruncationHeader=http://soap.sforce.com/schemas/class/MyWebService';
        private String DebuggingInfo_hns = 'DebuggingInfo=http://soap.sforce.com/schemas/class/MyWebService';
        private String SessionHeader_hns = 'SessionHeader=http://soap.sforce.com/schemas/class/MyWebService';
        private String DebuggingHeader_hns = 'DebuggingHeader=http://soap.sforce.com/schemas/class/MyWebService';
        private String CallOptions_hns = 'CallOptions=http://soap.sforce.com/schemas/class/MyWebService';
        private String[] ns_map_type_info = new String[]{'http://soap.sforce.com/schemas/class/MyWebService', 'soapSforceComSchemasClassMywebservi'};
        public AsyncSoapSforceComSchemasClassMywebservi.displayHelloResponse_elementFuture beginDisplayHello(System.Continuation continuation) {
            soapSforceComSchemasClassMywebservi.displayHello_element request_x = new soapSforceComSchemasClassMywebservi.displayHello_element();
            return (AsyncSoapSforceComSchemasClassMywebservi.displayHelloResponse_elementFuture) System.WebServiceCallout.beginInvoke(
              this,
              request_x,
              AsyncSoapSforceComSchemasClassMywebservi.displayHelloResponse_elementFuture.class,
              continuation,
              new String[]{endpoint_x,
              '',
              'http://soap.sforce.com/schemas/class/MyWebService',
              'displayHello',
              'http://soap.sforce.com/schemas/class/MyWebService',
              'displayHelloResponse',
              'soapSforceComSchemasClassMywebservi.displayHelloResponse_element'}
            );
        }
    }
}