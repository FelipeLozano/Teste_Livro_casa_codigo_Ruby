require "spec_helper"

describe Person do
  subject{create_person(:name => "Felipe Lozano")}
  #has_value :name => "Felipe Lozano"

  its(:name){ should == "Felipe Lozano"}
  its(:role){should == "admin"}
  it{should be_admin}
  it "create person" do
  person= create_person
  person.should be_a(Person)  	
  end


   

end