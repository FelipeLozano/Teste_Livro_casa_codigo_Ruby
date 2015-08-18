require "spec_helper"

describe MovieList do
  subject { MovieList.new }
  
  context "when first created" do
    it_should_behave_like "Any new media list"
  end
  
  context "storing movies" do
    it "should allow the user to store movies" do
      movie = Movie.new("Juno", 2007, 10)
      subject.store movie
      
      subject.should_not be_empty
    end
    
    it "should give me an average rating of the movies" do
      movie1 = Movie.new("Juno", 2007, 10)
      movie2 = Movie.new("Transformers 2", 2009, 1)
      
      subject.store movie1
      subject.store movie2
      
      subject.average_rating.should == "5.50"
      subject.should_not be_an_awesome_collection
    end
  end
end
