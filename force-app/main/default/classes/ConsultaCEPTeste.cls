@isTest
private class ConsultaCEPTeste {

    @isTest
    private static void testeSucesso() {
        String retornoCEP = '{"cep": "60411075", "state": "CE", "city": "Fortaleza", "street": "Rua Abelardo Marinho"}';
        Test.setMock(HttpCalloutMock.class, new MockCEP(200, retornoCEP));

        Test.startTest();
        String endereco = ConsultaCEP.buscarEndereco('60411075');
        Test.stopTest();

        System.assertNotEquals(null, endereco, 'Resultado da consulta diferente de nulo');
        System.assert(endereco.contains('Fortaleza'), 'A resposta deve conter a cidade Fortaleza');
    }

    @isTest
    private static void testeErro() {
        Test.setMock(HttpCalloutMock.class, new MockCEP(404, 'Not Found'));

        Test.startTest();
        	String endereco = ConsultaCEP.buscarEndereco('99999999');
        	System.assert(endereco.contains('Not Found'),'Erro ao consultar o CEP.');
        Test.stopTest();
    }
}