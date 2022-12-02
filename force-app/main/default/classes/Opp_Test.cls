public class Opp_Test {
    public List<Opportunity> opp{set;get;}
    public Opp_Test(){
        opp = [SELECT Id , Name FROM Opportunity];
    }
    public void limit10(){
        opp = [SELECT Id , Name FROM Opportunity LIMIT 10];
    }
    public void limitoff10(){
        opp = [SELECT Id , Name FROM Opportunity OFFSET 10];
    }
    public void limitoff5(){
        Integer count = 10;
        opp = [SELECT Id , Name FROM Opportunity LIMIT : count OFFSET 5];
    }
    
}