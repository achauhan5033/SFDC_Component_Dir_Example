trigger SampleAccountTrigger on Account bulk (before insert) {
    // my changes
	for (Integer i = 0; i < Trigger.new.size(); i++) {
        Account acct = System.Trigger.new[i];
        acct.phone = SampleDeployClass.getPhone();
    }
}