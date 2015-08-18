require "spec_helper"

describe BookList do
  subject { BookList.new }
  
  context "when first created" do
    it_should_behave_like "Any new media list"
  end
  
  context "storing books" do
    it "should allow the user to store books" do
      book = Book.new("Blink", "Malcolm Gladwell", 2005, 10)
      subject.store book
      
      subject.should_not be_empty
    end
  end
  
  it "should give me an average rating of the movies" do
    book1 = Book.new("Blink", "Malcolm Gladwell", 2005, 10)
    book2 = Book.new("The Tipping Point", "Malcolm Gladwell", 2004, 8)
    
    subject.store book1
    subject.store book2
    
    subject.average_rating.should == "9.00"
    subject.should be_an_awesome_collection
      
  end  
end