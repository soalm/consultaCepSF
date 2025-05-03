public with sharing class ConsultaCEP {
    @AuraEnabled(cacheable=true) 
    public static String buscarEndereco(String cep) {
        Http http = new Http(); //Obj Http para fazer a chamada
        HttpRequest request = new HttpRequest(); //Obj da requisição que será enviada para a api
        request.setEndpoint('https://brasilapi.com.br/api/cep/v1/' + cep); // Endereço da API concatenando a variavel cep no ffinal
        request.setMethod('GET'); // Define o metodo de consulta na API
        HttpResponse response = http.send(request); // Envia a requisição e recebe uma resposta no objeto response
        if (response.getStatusCode() == 200) { //Condicional pra verficiar se o status da resposta é 200(sucesso)
            return response.getBody();// Retorna o json para ser exibido na tela
        } else {
            throw new AuraHandledException('Erro ao consultar o CEP: Código de status ' + response.getStatusCode()); //Informa o codigo de erro da requisição
        }
    }
}