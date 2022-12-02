public class Account_Test {
    public List<Account> acc {set;get;}
    public Account_Test(){
        acc = [SELECT Name , Industry FROM Account];
    }
    public void limit5(){
        acc = [SELECT Name , Industry FROM Account LIMIT 5];
    }
    public void limit10(){
        Integer count = 10;
        acc = [SELECT Name , Industry FROM Account LIMIT : count];
    }
    public void offset5(){
        acc = [SELECT Name , Industry FROM Account offset 5];
    }
    public void offset2(){
        Integer count = 2;
        acc = [Select Name , Industry FROM Account offset 2];
    }
    public void offsetlimit(){
        Integer count = 5;
        acc = [Select Name , Industry FROM Account limit : count offset 2];
    }
}