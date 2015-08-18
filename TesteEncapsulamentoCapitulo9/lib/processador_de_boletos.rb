require_relative '../lib/pagamento.rb'
#require_relative '../lib/boleto.rb'
require_relative '../lib/fatura.rb'

class ProcessadorDeBoletos
	def processo boleto,fatura
			valor_total =0
			boletos.each do|boleto|
			pagamento=Pagamento.new boleto.valor ,MaioDePagamento::BOLETO 
			fatura.adiciona_pagamento pagamento
			end
	end
	
	
end
module MeioDePagamento
		BOLETO =0
		
		
end	