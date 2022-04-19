public with sharing class ParentChangeDateTimeClass {
    public static void parentDateChange(List<Test_Child__c> childList){

        DateTime parentDateTimeToChange;
        List<Test_Child__c> childs = [SELECT CreatedDate FROM Test_Child__c ORDER BY CreatedDate]; 
        for(Test_Child__c ch : childs){
            parentDateTimeToChange = ch.CreatedDate;
            break;
        }

        List<Test_Parent__c> parents = new List<Test_Parent__c>();
        for(Test_Child__c ch : childList) {
            parents.add(new Test_Parent__c(Id = ch.Test_Parent__c, Test_Date__c = parentDateTimeToChange));
        }
        update parents;
       
    }
}
