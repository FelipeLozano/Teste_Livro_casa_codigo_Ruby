require "spec_helper"
describe Account do
	it "has balance of zero" do
		subject.balance.should be_zero
	end
	it "debits from balance" do
		subject.balance =10.00
		subject.debit 3.00
		subject.balance.should ==7.00
	end
	it "normalizes amount while debiting" do
		subject.balance = 10.00
		subject.debit -3.00
		subject.balance.should ==7.00
	end
	it "returns balance alter debiting amount" do
		subject.debit(3).should == -3.00
	end
  
end