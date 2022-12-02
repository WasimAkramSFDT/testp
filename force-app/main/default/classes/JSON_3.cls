public class JSON_3 {
    public void getJson(){
        System.JSONGenerator js = JSON.createGenerator(true);
        js.writeStartObject();
        try{
            List<Contact> con = [Select FirstName, LastName, Phone FROM Contact WHERE Phone <> NULL];
            for(Contact cont : con){
                js.writeStringField('FirstName', cont.FirstName);
                js.writeStringField('LastName', cont.LastName);
                js.writeStringField('Phone', cont.Phone);
                js.writeStringField('Status', 'SUCCESS');
                js.writeNumberField('Code', 200);
            }
        }catch(Exception e){
            js.writeStringField('Status', 'SUCCESS');
            js.writeNumberField('Code', 200);
        }
        js.writeEndObject();
        String result = js.getAsString();
        System.debug(''+result);
    }
}