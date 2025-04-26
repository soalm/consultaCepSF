public with sharing class CEPService {
    @AuraEnabled(cacheable=true)
    public static String buscarEndereco(String cep) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://brasilapi.com.br/api/cep/v1/' + cep);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) {
            return response.getBody();
        } else {
            throw new AuraHandledException('Erro ao consultar o CEP: ' + response.getStatus());
        }
    }
}
