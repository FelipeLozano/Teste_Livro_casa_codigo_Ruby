require "spec_helper"


describe Person	 do
		 subject(:person) {Person.new(:name=>"Maria Betania",:role=>"Ola") }
	#before do 
	#	@person=Person.new
	#end
  #its(:name){should == "Maria Betania"}
 	it{should_not be_admin}
 	specify("1 should == 1") { 1.should == 1 }
 	#xit{raise Error}
 	#pending {raise }
  focus"do only this" do 
  	
  end
  it "teste focado",:focus => true do
  end
  it"responds to :name attribute " do
  		#@person =Person.new
  		#@person.should respond_to(:name)
  		subject.should respond_to(:name)

  end
  it "sets :name attribute" do
  	#@person= Person.new
  	#@person.name = "Felipe Lozano"
  	#@person.name.should =="Felipe Lozano"
  	subject.name = "Mery Lozano"
  	subject.name.should =="Mery Lozano"

  end
  it "is a admin o true admin" do
  	#@person = Person.new
  	#@person.role = "admin"
  	#@person.should be_admin
  	subject.role = "admin"
  	subject.should be_admin
  	
  end
  it "is a admin nao admin" do
  	#@person = Person.new
  	#@person.role = nil
  	#@person.should_not be_admin
  	subject.role = nil
  	subject.should_not be_admin
  end
  it "Define attribute based on initializatio hash" do
  	subject.name.should == "Maria Betania"
  	subject.role.should == "Ola"
  	
  end
  it "instantiates without hash" do
  	#Mais legivel
  	expect{Person.new}.to_not raise_error(ArgumentError)
	#lambda{Person.new}.should_not raise_error
  end


end