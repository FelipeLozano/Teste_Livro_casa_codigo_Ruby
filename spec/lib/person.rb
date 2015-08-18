class Person 
	attr_accessor :name ,:email
	def account
		@account||=Account.new
	end
	def place_order(order)
		# order.save! salvar no bando de dados
		#pay order.total_amount
		pay order[:total_amount]
	end
	
	def pay(amount)
		#transacaoenvolvendo o banco e cartao de credito
		#true
		account.debit amount
		#raise "Not implemeted"
	end
	def debit(amount)
		@balance =  balance
	end
	#attr_accessor :name,:role
	#def initialize(options={},&block)
	#	options.each{|name,value| send("#{name}=", value)}
	#	instance_eval(&block) if block_given?
	#end
	
	#def admin?
	#	role =="admin"
		#true
	#end
	
end