@isTest
public class General_Test {
    @isTest
    static void testMe(){
    General g = new General();
    g.invoke();
    System.assertEquals('wasim', g.name);
    System.assertEquals('hyd', g.city);
    g.call();
    System.assertEquals('akram', g.name);
    System.assertEquals('kol', g.city);
    }
}