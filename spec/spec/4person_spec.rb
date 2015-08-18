require"spec_helper"

 describe "car" do
    context "when porshe" do
    	let(:brand){:porshe}
    	let(:color){:black}
    	let(:target){:rich_people}
    	#subject{ Car.new :porshe }
    	#its(:brand){should==:porshe}
    	#its(:color){should == :black}
    	#its(:target){should ==:rich_people}
    	it_behaves_like "a car"
    end
    context "when ferrari" do
    	#subject{ Car.new :ferrari }
    	#its(:brand){should==:ferrari}
    	#its(:color){should == :red}
    	#its(:target){should ==:rich_people}
    	let(:brand){:ferrari}
    	let(:color){:red}
    	let(:target){:rich_people}
    	it_behaves_like "a car"
    end
    context "when other" do
    	#subject{ Car.new :ford }
    	#its(:brand){should==:ford}
    	#its(:color){should == :write}
    	#its(:target){should ==:sucks_to_be_poor}
    	let(:brand){:ford}
    	let(:color){:white}
    	let(:target){:sucks_to_be_poor}
    	it_behaves_like "a car"
    end
 end