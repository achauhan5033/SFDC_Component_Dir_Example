@isTest
public class SampleDeployClass {

    public static testmethod void t1() {

	//hello git from SFDC
	helloMethod();

	//hello again, this time for PRJ400
        Account acc = new Account(Name= 'fred');
        insert acc; // hit the trigger

        // Check that the trigger properly set the phone field:
        Account retAcc = [select id, phone from Account where id=:acc.id][0];
        System.assertEquals(getPhone(), retAcc.phone);
    }
	// more changes
    public static String getPhone() {
        return 'SamplePhone#';
    }
    
	// my change
	// one more change
	
	// Dev2 change
	// Dev2 another change
	// Dev3 one more change
	// Dev3 again
	// Dev3 adding another comment
	// Dev3 one more comment here
	// Dev3 another change
	// Dev3 is adding another comment
	// Dev3 here's another comment
	
    public static void helloMethod() {
        System.debug('Hello World');
    }
}