class Book
  attr_accessor :title, :author, :year, :rating
  def initialize(title, author, year, rating)
    @title, @author, @year, @rating = title, author, year, rating
  end
end