import { LightningElement } from 'lwc';
import buscarEndereco from '@salesforce/apex/ConsultaCEP.buscarEndereco';

export default class ConsultaCEP extends LightningElement {
    cep = '';
    endereco = null;
    erro = null;

    handleCepChange(event) { //Recebe o evento do input e atualiza a variavel cep
        this.cep = event.target.value;
    }

    handleBuscar() {
        this.endereco = null; //Limpa o a variavwl antiga para receber o novo valor
        this.erro = null; //Limpa o a variavwl antiga para receber o novo valor

        buscarEndereco({ cep: this.cep }) //Chama o metodo apex passando o Cep informado 
            .then(result => {
                this.endereco = JSON.parse(result); //Se a consultar der certo, converte o json em um objeto e guarda na variavel endereço
            })
            .catch(error => {
                this.erro = error.body.message;// Guarda a msg de erro 
            });
    }
}