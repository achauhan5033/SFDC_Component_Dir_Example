trigger SampleAccountTrigger on Account bulk (before insert) {
    // my changes
	//another change
	// change 3
	// dev3 comment
	// dev3 another comment here
	// Dev3 one more comment in trigger file
	// Dev3 change
	for (Integer i = 0; i < Trigger.new.size(); i++) {
        Account acct = System.Trigger.new[i];
        acct.phone = SampleDeployClass.getPhone();
    }
}