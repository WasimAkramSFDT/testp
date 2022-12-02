@isTest
public class Example_Test_2_Test {
    @isTest
    static void testMe(){
        Example_Test_2 e2 = new Example_Test_2();
        e2.setDate();
        System.assertEquals('IT', e2.industry);
        System.assertEquals('hot', e2.rating);
    }
}