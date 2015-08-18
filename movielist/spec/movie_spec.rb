require "spec_helper"
describe Movie do
	it"should require a name" do
		doing{Movie.new(nil,2010,10)}.should raise_error ArgumentError
	end
  
end