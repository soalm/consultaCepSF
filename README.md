# 🔎 Consulta de CEP no Salesforce

> Projeto Salesforce para consultar dados de endereço a partir de um CEP, utilizando integração com API externa e Lightning Web Components.

---

## ✨ Tecnologias utilizadas

*   Salesforce Apex
*   Lightning Web Components (LWC)
*   API pública de consulta de CEP ([BrasilAPI](https://brasilapi.com.br/))
*   Testes unitários com Mock HTTP (Apex)

---

## 📦 Estrutura do projeto

```css
force-app/
 └── main/
      └── default/
           └── classes/
            ├── ConsultaCEP.cls
            ├── ConsultaCEP.cls-meta.xml
            ├── ConsultaCEPTeste.cls
            ├── ConsultaCEPTeste.cls-meta.xml
            ├── MockCEP.cls
            └── MockCEP.cls-meta.xml
      └── lwc/
           └── consultaCEP/
            ├── consultaCEP.html 
            ├── consultaCEP.js   
            └── consultaCEP.js-meta.xml 
```

---

## 🏯 Funcionalidades

*   Consulta automática de:
    *   Estado (UF)
    *   Cidade
    *   Bairro
    *   Rua
*   Exibição de mensagens de erro amigáveis.
*   Cobertura de testes com simulação de chamadas externas (Mock).
*   Código seguindo boas práticas de desenvolvimento Salesforce.

---

## 🚀 Como instalar e configurar

### 1\. Clone o projeto:

```css
git clone https://github.com/seu-usuario/consulta-cep-salesforce.git
```

### 2\. Faça o deploy para sua Org Salesforce:

Use o Salesforce CLI ou a extensão do VS Code para Salesforce.

### 3\. Configure o Remote Site Settings:

Para permitir que o Salesforce faça chamadas HTTP externas:

*   Acesse o **Setup** ➔ Pesquise por "**Remote Site Settings**".
*   Clique em **New Remote Site**.
*   Preencha:
    *   **Remote Site Name**: BrasilAPI
    *   **Remote Site URL**: `https://brasilapi.com.br`
*   Salve.

> ⚠️ Esta configuração é obrigatória para que a consulta funcione!

### 4\. Adicione o componente ConsultaCEP:

*   No App Builder, adicione o componente LWC `ConsultaCEP` em uma página de registro ou de aplicativo.

---

## 🧪 Como executar os testes

*   Acesse o **Developer Console** ➔ **Test** ➔ **New Run**.
*   Selecione a classe `CEPServiceTest`.
*   Execute os testes.

> ✅ Todos os testes simulam chamadas HTTP usando Mock, conforme boas práticas de teste unitário em Salesforce.

---

## 📖 Exemplo de resposta da API

```css
{
  "cep": "01001000",
  "state": "SP",
  "city": "São Paulo",
  "neighborhood": "Sé",
  "street": "Praça da Sé"
}
```

---

## 📢 Contato

Se quiser conversar sobre Salesforce, APIs ou projetos de desenvolvimento:

*   [**Email**](mailto:1samueloliveira@gmail.com)
*   [**LinkedIn**](https://www.linkedin.com/in/samueloal/)
