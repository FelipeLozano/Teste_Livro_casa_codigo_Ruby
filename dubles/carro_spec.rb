require "rubygems"
require "rspec"
require "mocha"
#require "rr"
require "./carro"


RSpec.configure do |config|
 #config.mock_with :rr
  config.mock_with :mocha
end

describe Carro do
  it "deve disparar o motor de arranque quando ligar" do
   ## com RSpec
   #subject.stubs(:aumentar_velocidade).returns(true)
   #subject.should_receive(:disparar_motor_de_arranque).and_return true
   
   #Retorna mais rapido tira algum metodo RR
	#stub(subject).aumentar_velocidade{true}
    #mock(subject).disparar_motor_de_arranque{true}
    #Com mocha
    subject.stubs(:aumentar_velocidade).returns(true)
    subject.expects(:disparar_motor_de_arranque).returns(true)
    
    subject.ligar_motor
    
    subject.ligado.should == true
  end
  
  it "deve estar parado quando ligar"
  
  it "deve estar ligado para acelerar"
end

