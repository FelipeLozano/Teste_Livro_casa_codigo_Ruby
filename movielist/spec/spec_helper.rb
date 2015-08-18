require "movielist"
require "movie"
require "booklist"
require "book"

alias doing lambda

class AnAwesomeCollection 
	
	def matches?(actual)
		@actual=actual
		#Satisfy expectation here .Return false or raise an error if it´s no met
		@actual.average_rating.to_f >=8
	end


    def failure_message_for_should
      "expected average rating to be equal or greater than 8, but it didn't"
    end

    def failure_message_for_should_not
      "expected average rating to be equal or smaller than 8, but it didn't"
    end
    
	
end
def be_an_awesome_collection
    	AnAwesomeCollection.new
    end

shared_examples_for "Any new media list" do 
	specify { subject.should be_empty }
end
