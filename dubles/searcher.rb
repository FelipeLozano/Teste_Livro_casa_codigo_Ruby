require "spec"
require "fakeweb"

class Searcher
  def tweets_from(user)
    @from = user
  end
  
  def search
    Twitter::Search.new.from(user).fetch.results
  end
end

describe Searcher do
  
end
