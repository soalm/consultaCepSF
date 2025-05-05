public with sharing class ConsultaCEP {
    @AuraEnabled
    public static String buscarEndereco(String cep) {
        Http http = new Http(); 
        HttpRequest request = new HttpRequest(); 
        request.setEndpoint('https://brasilapi.com.br/api/cep/v1/' + cep); 
        request.setMethod('GET'); 
        HttpResponse response = http.send(request); 
        if (response.getStatusCode() == 200) { 
            return response.getBody();
        } else {
            return response.getBody() + response.getStatusCode();
        }
    }
}