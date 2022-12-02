({
	calculateMe : function(cmp, event, helper) {
        var a = cmp.find("amt").get("v.value");
        var b = cmp.find("rate").get("v.value");
        var c = cmp.find("year").get("v.value");
        var action = cmp.get("c.calculateIntrest");
        action.setParam({"Amount":a,"Rate":b,"Year":c});
    }
})