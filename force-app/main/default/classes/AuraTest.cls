public class AuraTest {
    @AuraEnabled
    public static Decimal calculateIntrest(Decimal Amount, Decimal Rate, Decimal Year){
        Decimal intrest = (Amount*Rate*Year)/100;
        return intrest;
    }
}