trigger act1 on Account (before insert, before update) {
    for(Account ac : Trigger.New){
        List<Account> acc = [SELECT Id, Name FROM Account WHERE Name =: ac.Name];
        if(acc.size() > 0){
            ac.Name.addError('Error');
        }
    }
}