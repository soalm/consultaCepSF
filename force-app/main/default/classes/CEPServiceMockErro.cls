@isTest
public class CEPServiceMockErro implements HttpCalloutMock {
    public HTTPResponse respond(HTTPRequest request) {
        HttpResponse response = new HttpResponse();
        response.setStatusCode(404);
        response.setBody('{"error":"Erro ao consultar o CEP: "}');
        return response;
    }
}