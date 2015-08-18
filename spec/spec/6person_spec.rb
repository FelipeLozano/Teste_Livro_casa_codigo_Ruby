require"spec_helper"
describe Person do
	before do
		Account.any_instance.expects(:debit).once.returns(1.00)
	end
	it "debits from account" do
		subject.account.expects(:debit).with(9.00).returns(1.00)
		#subject.account.debit 3.00.should == 1
	end
  
end