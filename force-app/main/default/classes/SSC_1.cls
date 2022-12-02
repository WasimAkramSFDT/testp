public class SSC_1 {
    @Auraenabled
    public static Account getMethod(){
        Account acc = [SELECT Id, Name FROM Account Limit 1];
        return acc;
    }
}