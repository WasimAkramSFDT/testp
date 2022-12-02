public class JSON_2 {
    public void getJson(){
        System.JSONGenerator js = JSON.createGenerator(true);
        js.writeStartObject();
        try{
            List<Account> acc = [SELECT Name, Phone FROM Account WHERE Phone <> NULL];
            for(Account act : acc ){
                js.writeStringField('Account Name', act.Name);
                js.writeStringField('Account Phone', act.Phone);
                js.writeStringField('Status', 'SUCCESS');
                js.writeNumberField('Code', 200);
            }
        }catch(Exception e){
                js.writeStringField('Status', 'Failed');
                js.writeNumberField('Code', 404);
        }
        js.writeEndObject();
        String result = js.getAsString();
        System.debug(''+result);
    }
}