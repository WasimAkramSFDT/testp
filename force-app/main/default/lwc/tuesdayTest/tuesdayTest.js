import { LightningElement } from 'lwc';
export default class TuesdayTest extends LightningElement {
    value='Rated';
    get options(){
        return[
            {label:'Rated',value:'rated'},
            {label:'UnderRated',value:'unrated'},
            {label:'Both',value:'both'},
        ];
    }
    handleChange(event){
        this.value = event.detail.value;
    }
}