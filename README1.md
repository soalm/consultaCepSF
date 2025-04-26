🔎 Consulta de CEP no Salesforce
Bem-vindo(a)!
Este projeto foi desenvolvido para realizar consultas de endereço a partir de um CEP, utilizando Apex e Lightning Web Components (LWC) no Salesforce.

A ideia é oferecer uma solução prática para preencher automaticamente os campos de endereço em formulários, melhorando a experiência dos usuários.

✨ Tecnologias Utilizadas
Salesforce Apex (Lógica de negócio)

Lightning Web Components (LWC) (Interface)

API pública de consulta de CEP

Testes unitários com Mock de Callout HTTP no Apex

📦 Estrutura do Projeto
bash
Copiar
Editar
force-app/
 └── main/
      └── default/
           ├── classes/
           │     ├── CEPService.cls        # Classe Apex que realiza a chamada HTTP
           │     ├── CEPServiceMock.cls     # Classe Mock para testes
           │     └── CEPServiceTest.cls     # Classe de testes unitários
           └── lwc/
                 └── consultaCEP/
                       ├── consultaCEP.html  # Componente HTML
                       ├── consultaCEP.js     # Lógica JavaScript
                       └── consultaCEP.js-meta.xml # Metadata LWC
🎯 Funcionalidades
Digitar o CEP e buscar automaticamente:

Estado (UF)

Cidade

Bairro

Rua

Exibição de mensagens de erro amigáveis caso o CEP não seja encontrado.

Cobertura de testes unitários com mocks de chamadas HTTP.

🚀 Como usar
Clone o repositório:

bash
Copiar
Editar
git clone https://github.com/seu-usuario/consulta-cep-salesforce.git
Faça o deploy do projeto para sua org Salesforce usando o VS Code com Salesforce Extensions.

Configure a Remote Site Settings (obrigatório):

No Setup do Salesforce, procure por "Remote Site Settings".

Clique em "New Remote Site".

Preencha:

Remote Site Name: BrasilAPI (ou qualquer nome que quiser)

Remote Site URL: https://brasilapi.com.br

Salve.

Isso é necessário para que o Salesforce permita fazer chamadas para a API externa.

Adicione o componente ConsultaCEP a uma página no App Builder.

Insira um CEP válido e veja a mágica acontecer! ✨

🧪 Rodando os testes
No Salesforce:

Abra o Developer Console ➔ Test ➔ New Run.

Selecione a classe CEPServiceTest.

Execute os testes para validar o comportamento e a cobertura de código.

🙌 Sobre o projeto
Este projeto foi criado como um desafio de prática e aprendizado de integração de Salesforce com APIs externas, utilizando as melhores práticas de desenvolvimento seguro, tratamento de exceções e testes de unidade.

Se te ajudou ou te inspirou, ⭐ deixe uma estrela no repositório!

📫 Contato
Se quiser conversar sobre Salesforce, desenvolvimento ou projetos, sinta-se à vontade para me chamar:

Email: [seu-email@email.com]

LinkedIn: [seu-linkedin]