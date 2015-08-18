shared_examples_for "a car" do 
	subject{ Car.new brand }
    	its(:brand){should== brand}
    	its(:color){should == color}
    	its(:target){should == target}
    	
end