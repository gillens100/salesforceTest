public class accountContactsController {
    
    public List<contact>  contacts {get; set;}
    
    public accountContactsController(apexpages.StandardController con){
        
        contacts = [SELECT firstName, lastName, Phone FROM Contact WHERE AccountId = :con.getId()];
        contacts.addAll(contacts);
        contacts.addAll(contacts);
    }

}