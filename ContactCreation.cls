public  class ContactCreation {
    @AuraEnabled
    // @AuraEnabled: This annotation allows the method to be accessible from Lightning Components (LWC).
    public static String createContacts(string firstName, string lastName, string email){ // The method accepts three parameters (firstName, lastName, email), creates a new Contact record, and inserts it into Salesforce.
        try{
            Contact con = new Contact(FirstName = firstName , LastName = lastName , Email = email);
            insert con;
            return con.Id; //If the insert is successful, the method returns the Id of the created Contact. 
        }catch(exception ex){
            throw new AuraHandledException(ex.getMessage());
            // If there’s an error, it throws an exception with a message that can be caught and displayed in the LWC.
        }
        
    }
}