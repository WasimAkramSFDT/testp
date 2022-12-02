@isTest
public class Example_Test3 {
    testMethod static void testMe(){
        Example_3 e3 = new Example_3();
        e3.industry = 'Banking';
        e3.invoke();
        System.assertEquals('Hot', e3.rating);
        System.assertEquals('Private', e3.ownership);
        
    }
}