import { LightningElement, track } from 'lwc';

export default class ReactiveProperty extends LightningElement {
    @track name;
    handleChange(event){
        this.name = event.target.value;
    }
}