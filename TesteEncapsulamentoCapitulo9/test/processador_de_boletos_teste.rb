#encoding: UTF-8
require 'minitest/autorun'
require_relative '../lib/processador_de_boletos.rb'
require_relative '../lib/fatura.rb'
require_relative '../lib/boleto.rb'

class ProcessadorDeBoletosTest < MiniTest::Unit::TestCase
	def teste_deve_processar_pagamento_via_boleto_unico
		processador = ProcessadorDeBoletos.new('Cliente',150.0)
		b1=Boleto.new(150.0)
		processador.processa([b1],fatura)
		assert_equal 1,fatura.pagamentos.size
		assert_equal 150.0,fatura.pagamentos[0].valor
	end
	def teste_deve_processar_pagamnto_via_muitos_boletos
		processador=ProcessadorDeBoletos.new
		fatura=Fatura.new('Cliente',300.0)
		b1=Boleto.new 100.0
		b2=Boleto.new 200.0
		
		processador.processa [ b1,b2 ] ,fatura

		assert_equal 2,fatura.pagamentos.size
		assert_equal 100.0,fatura.pagamentos[0].valor
		assert_equal 200.0,fatura.pagamentos[1].valor
		
	end
end