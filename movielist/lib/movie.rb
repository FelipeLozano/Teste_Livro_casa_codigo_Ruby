
class Movie 
	attr_accessor :name ,  :year , :rating
	def initialize(name , year,rating)
		unless name
			raise ArgumentError
		end
		@name = name
		@year=year
		@rating = rating
	end
	
	
end
