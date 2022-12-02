public class Intragation {
    public void getName(){
        System.JSONGenerator js = JSON.createGenerator(true); // 1
        js.writeStartObject();                                // 2
        try{ 
            List<Account> acc = [SELECT Name,Phone FROM Account];
            for(Account act : acc){
                js.writeStringField('Name', act.Name);
                js.writeStringField('Phone', act.Phone);
                js.writeStringField('Status', 'SUCCESS');
                js.writeNumberField('Code', 200);
            }
        }catch(Exception e){
            js.writeStringField('Status', 'Failder');
            js.writeNumberField('Code', 404);
        }
        js.writeEndObject();                                  // 3
        String result = js.getAsString();                     // 4
        System.debug(result);
    }
}