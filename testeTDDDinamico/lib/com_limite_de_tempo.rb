require 'timeout'
class ComLimiteDeTempo		
	def initialize(limite,target)
		@limite=limite
		@target=target
		#@objeto_limitado=objeto_limitado
	end
	def method_missing(method, *args)
		Timeout::timeout(@timeout)do @target.send(method,*args)
	end
		#@objeto_limitado.send(method,*args)
	end
	
	
end