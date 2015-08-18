require "spec_helper"

describe Person	do
	it "places order" do
		#subject.should_receive(:pay).with(9.90).once
		#subject.should_not_receive(:pay)
		#subject.should invoke_method(:pay)
		#subject.stub(:pay =>true ,:pai? =>true)
		#subject.stub(:pay).and_return(true)
		subject.stub :pay =>true
		subject.place_order(:total_amount => 9.90).should be true
		#subject.should be_paid
	end
	it "debits from account" do
		subject.place_order(:total_amount =>10)
	end
	it "debits from account and return balance" do
		subject.account.stub :debit => 7.00
		subject.place_order(:total_amount =>10).should == 7.00
		
	end
  
end