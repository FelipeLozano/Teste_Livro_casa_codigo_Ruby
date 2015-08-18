module List
	def empty?
		@list.size == 0
	end
	def store(element)
		@list << element
	end
	def average_rating
		"%.2f" %(@list.inject(0){|sum,element| sum + element.rating}.to_f / @list.length)
	end
	
	
end