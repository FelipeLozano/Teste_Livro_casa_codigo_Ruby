require 'rails_helper'
#require 'spec_helper'

RSpec.describe LinksController, type: :controller do
	let(:link) { mock_model(Link).as_null_object }
	describe "GET 'new'" do
	  it "renders new template" do 
	  	get :new
	 	response.should render_template("new") 	
	  end
	  it "assing @link" do 
	  	get :new
	  	assigns[:link].should be_an(Link)
	  	#expect(assigns(:link)).to be_a_new(Link)
	  end
	end
	describe "POST 'create'" do
	  it "create a new link" do
	  	#pending "Dependendo do direcionamento"
	  	Link.should_receive(:new).with("url"=>"http://google.com").and_return(link)
	  	post :create , :link=>{:url=>"http://google.com"}

	  end
	  it "saves the link" do
	  	#let(:link) { mock_model(Link) }
	  	#link = mock_model("Link")
		#link =stub_model(Link)	  	
	  	#link.should_receive(Link)
	  	Link.stub :new => link
	  	#Link.stub(:new).and_return(link)
	  	link.should_receive(:save)
	  	post :create	
	  end
	  it "redirects to the show page" do
	  	post :create
	  	response.should redirect_to("/links/1")
	  end
	  it "display massagem" do
	  	
	  end
	end
end
