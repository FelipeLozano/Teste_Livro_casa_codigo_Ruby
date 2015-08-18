require 'rails_helper'

RSpec.describe Link, type: :model do
  
  it "requires url"  do
  	subject.url = nil
  	subject.should_not be_valid

  end
  it "rejectinvalid url" do
	
  	subject.url = "invalid"
  	subject.should_not be_valid  	
  end

  it"is valid when have valid attributes" do
  		subject.attributes = {:url => "http://google.com"}
  		#subject{ Link.new(:url =>"http://google.com") }
  		#subject.should be_valid
  		subject.valid?
  		
  end

end
