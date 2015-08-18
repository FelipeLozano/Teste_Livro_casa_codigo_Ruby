class CarrinhoDeCampras 
	def initialize
		@itens=[]
	end
	def <<(item)
		@itens << item
	end
	def valot_total
		@itens.map do|item|
			item.valor*item.quantidade
		end.reduce(:+)
	end
	
	
end