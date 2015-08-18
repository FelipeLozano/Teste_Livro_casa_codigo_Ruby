class Car 
	attr_accessor :brand  , :color ,:target
	
	def initialize(brand)
		@brand = brand
		#@target = target
		case brand
		when :ferrari
			@color = :red
			@target = :rich_people
		when :porshe
				@color=:black
				@target = :rich_people
		else
		@color = :white	
		
		@target = :sucks_to_be_poor
		end
	end

	
end