({
	calculate : function(component, event, helper) {
        console.log('start');
		var a = component.get("v.amount");
        console.log('step 1');
        var b = component.get("v.year");
        console.log('step 2');
        var c = component.get("v.rate");
        console.log('step 3');
        var res = (amount*year*rate)/100;
        console.log('step 4');
        component.set("v.intrest",res);
        console.log('end');
	}
})