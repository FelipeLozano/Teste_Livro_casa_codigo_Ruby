class Account 
	attr_accessor :balance
	def initialize
		@balance= 0
	end
	def debit(amount)
		@balance -= amount.abs
	end
	
	
end