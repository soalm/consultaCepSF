@isTest
public class CEPServiceMockErro implements HttpCalloutMock {
    public HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setStatusCode(404);
        response.setBody('{"message":"CEP não encontrado"}');
        return response;
    }
}