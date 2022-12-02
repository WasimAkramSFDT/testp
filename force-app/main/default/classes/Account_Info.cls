public class Account_Info {
    public List<Account> account{set;get;}
    public Account_Info(){
        account = [SELECT Id,Name From Account];
    }
}