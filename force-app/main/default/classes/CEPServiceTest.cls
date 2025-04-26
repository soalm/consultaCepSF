@isTest
private class CEPServiceTest {

    @isTest
    static void testBuscarEnderecoSucesso() {
        Test.setMock(HttpCalloutMock.class, new CEPServiceMockSuccess());

        Test.startTest();
        String resultJson = CEPService.buscarEndereco('01001000');
        Test.stopTest();

        System.assertNotEquals(null, resultJson, 'O retorno não deveria ser nulo.');
        System.assert(resultJson.contains('Praça da Sé'), 'O retorno deveria conter o nome da rua.');
    }

    @isTest
    static void testBuscarEnderecoFalha() {
        Test.setMock(HttpCalloutMock.class, new CEPServiceMockErro());

        Test.startTest();
        Boolean exceptionThrown = false;
        try {
            CEPService.buscarEndereco('00000000');
        } catch (AuraHandledException e) {
            exceptionThrown = true;
            System.debug('Mensagem capturada: ' + e.getMessage());
            System.assert(
                e.getMessage().startsWith('Erro ao consultar o CEP:'),
                'Mensagem de erro inesperada: ' + e.getMessage()
            );
        }
        Test.stopTest();

        System.assert(
            exceptionThrown,
            'Era esperado que uma exceção fosse lançada, mas nenhuma foi capturada.'
        );
    }
}
