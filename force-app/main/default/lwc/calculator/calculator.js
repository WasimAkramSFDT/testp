import UserPreferencesApexPagesDeveloperMode from '@salesforce/schema/User.UserPreferencesApexPagesDeveloperMode';
import { LightningElement } from 'lwc';

export default class Calculator extends LightningElement {
    number1;
    number2;
    changeHandler(event){
        const val = event.target.value;
        const name = event.target.name;
        if(name==='num1'){
            this.number1 = val;
        }else{
            this.number2 = val;
        }

    }
    addme(){
        const res = parseInt(this.number1)+parseInt(this.number2);
        alert('Result '+res);
    }
    subme(){
        const res = parseInt(this.number1)-parseInt(this.number2);
        alert('Result '+res);
    }
    mulme(){
        const res = parseInt(this.number1)*parseInt(this.number2);
        alert('Result '+res);
    }
    divme(){
        const res = parseInt(this.number1)/parseInt(this.number2);
        alert('Result '+res);
    }
}