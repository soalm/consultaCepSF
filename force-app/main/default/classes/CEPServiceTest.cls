@isTest
private class CEPServiceTest {
    
    @isTest
    static void testBuscarEnderecoSucesso() {
        Test.setMock(HttpCalloutMock.class, new CEPServiceMockSuccesso());

        Test.startTest();
        String resultado = CEPService.buscarEndereco('01001-000');
        Test.stopTest();

        System.assertNotEquals(null, resultado, 'O resultado não deveria ser nulo');
        System.assert(resultado.contains('São Paulo'), 'O resultado deveria conter a cidade São Paulo');
    }

    @isTest
    static void testBuscarEnderecoErro() {
        Test.setMock(HttpCalloutMock.class, new CEPServiceMockErro());

        Test.startTest();
        try {
            CEPService.buscarEndereco('99999-999');
            System.assert(false, 'Deveria ter lançado uma exceção');
        } catch (AuraHandledException e) {
            System.assert(e.getMessage().contains('Erro ao consultar o CEP'), 'Mensagem de erro incorreta');
        }
        Test.stopTest();
    }
}