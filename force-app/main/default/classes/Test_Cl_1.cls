public class Test_Cl_1 {
    public void invoke(){
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        
        String[] toadd = new String[]{'wa844113@gmail.com'};
        String[] bcc = new String[]{'wa@gmail.com'};
        String[] cc = new String[]{'w@gmail.com'};
        msg.setToAddresses(toadd);
        msg.setBccAddresses(bcc);
        msg.setCcAddresses(cc);
        msg.setPlainTextBody('Hi Team');
        msg.setInReplyTo('wa844113@gmail.com');
        Messaging.Email[] email = new Messaging.Email[]{msg};
        Messaging.sendEmail(email);
    }
}