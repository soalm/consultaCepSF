@isTest
public class MockCEP implements HttpCalloutMock {
    
    private Integer codigoStatus;
    private String retornoReq;

    public MockCEP(Integer codigoStatus, String retornoReq) {
        this.codigoStatus = codigoStatus;
        this.retornoReq = retornoReq;
    }

    public HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody(this.retornoReq);
        res.setStatusCode(this.codigoStatus);
        return res;
    }
}
