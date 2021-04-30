/**
 * @description  : 
 * @author       : Srikanth Suryadevara(Deloitte-CDC)
 * @group        : 
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   04-30-2021   Srikanth Suryadevara(Deloitte-CDC)   Initial Version
**/
public class TestApexClass  {
    
    public static void testMethodApex(List<string> offerName){
        List<Offer__C> offerList = new List<Offer__c>();
        offerList = [SELECT Id,Name 
                     FROM Offer__c
                     WHERE Name  IN :offerName];
        
        Map<Id,Offer__c> offerMap = new Map<Id, Offer__c>([SELECT Id,Name 
                     										FROM Offer__c
                     										]);
        
        
        Offer__C offerRec = new Offer__c(Finalized_Salary__c = 10,
                                         Local_Average__c = 5);
        
        Database.SaveResult svR= Database.insert(offerRec);
        
        offerRec.Level__c = 'BTA';
        
        Update offerRec;
    }
}