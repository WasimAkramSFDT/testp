public class JSON_1 {
    public void getJson(String nm, String Ph, String Ind){
        System.JSONGenerator js = JSON.createGenerator(true);
        js.writeStartObject();
        try{
            Account ac = new Account();
            ac.Name = nm;
            ac.Phone = Ph;
            ac.Industry = Ind;
            Insert ac;
            js.writeStringField('STATUS', 'SUCCESS');
            js.writeIdField('AccountId', ac.id);
            js.writeStringField('MSG', 'AccountCreated SUCCESSFULLY');
            js.writeNumberField('Code', 500);
        }catch(Exception e){
            js.writeStringField('STATUS', 'Failed');        
            js.writeStringField('MSG', 'AccountCreated Failed');
            js.writeNumberField('Code', 404);
        }
        js.writeEndObject();
        String str = js.getAsString();
        System.debug(''+str);
    }
}