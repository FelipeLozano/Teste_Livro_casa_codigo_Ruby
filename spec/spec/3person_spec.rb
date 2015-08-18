require"spec_helper"
require"open-uri"

describe "Numbers" do
	#let(:list){ lambda{sleep 5;[1,2,3]}.call}
	#let(:list){print" called " ;sleep 5;[1,2,3]}
	#subject{open("http://simplesideias.com.br", "r").read }
	let!(:page){
	puts"\n------Chamada -------"
	sleep 3
    "<title>foo</title>"
    }
	#let(:page){open("http://simplesideias.com.br", "r").read }
	#let!(:list){print" called " ;sleep 5;[1,2,3]}
	it "doies somethin" do
		#subject.should match(/title/)
		page.should match(/title/)
		#puts"aftel list"
		#list.should == [1,2,3]
		#list.should == [1,2,3]
	end
	it "does something else" do
		#subject.should match(/\/title/)
		page.should match(/\/title/)
	end
  
end