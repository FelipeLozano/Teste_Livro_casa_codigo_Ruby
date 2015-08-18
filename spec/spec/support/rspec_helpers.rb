module RspecHelpers
	module InstanceMethods
		def create_person(options={})
   	Person.new({
   			:name => "Tereza Batista",
   			:role => "admin"
   		}.merge(options))	
   		end
	end
	module ClassMethods
		def has_value(options={})
			options.each do |name,value|
			its(name){should == value}
			end
		end	
	end
	
	
	
end


