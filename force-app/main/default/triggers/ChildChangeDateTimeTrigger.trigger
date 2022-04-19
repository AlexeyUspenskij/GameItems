trigger ChildChangeDateTimeTrigger on Test_Child__c (after insert) {
    if(Trigger.isAfter){
        ParentChangeDateTimeClass.parentDateChange(Trigger.new);
    }
}