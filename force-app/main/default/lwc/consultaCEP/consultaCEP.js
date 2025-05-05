import { LightningElement } from 'lwc';
import buscarEndereco from '@salesforce/apex/ConsultaCEP.buscarEndereco';

export default class ConsultaCEP extends LightningElement {
    cep = '';
    endereco = null;
    erro = null;

    handleCepChange(event) { 
        this.cep = event.target.value;
    }

    handleBuscar() {
        this.endereco = null; 
        this.erro = null; 

        buscarEndereco({ cep: this.cep }) 
            .then(result => {
                this.endereco = JSON.parse(result); 
            })
            .catch(error => {
                this.erro = error.body.message;
            });
    }
}