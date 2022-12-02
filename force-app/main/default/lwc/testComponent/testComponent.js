import { LightningElement, api } from 'lwc';
export default class TestComponent extends LightningElement {
    value="India";
      get options() {
        return [
            { label: 'India', value: 'ind' },
            { label: 'Pak', value: 'pak' }
            
        ];
    }
    handleChange(event) {
        this.value = event.detail.value;
    }
}

//first ask country
//ask state