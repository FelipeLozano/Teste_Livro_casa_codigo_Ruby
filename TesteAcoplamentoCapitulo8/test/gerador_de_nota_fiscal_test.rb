#encoding: UTF-8
require 'minitest/autorun'
require 'mocha/setup'
require 'test/unit'
require_relative '../lib/pedido.rb'
require_relative '../lib/gerador_de_nota_fiscal.rb'
class GeradorDeNotaFiscalTest < MiniTest::Unit::TestCase

	def teste_deve_gerar_NF_com_valor_de_imposto_decontado
		gerador=GeradorDeNotaFiscal.new		
		pedido =Pedido.new('Mauricio',1000,1)
		hf= gerador.gera pedido
		assert_equal 1000*0.94 ,nf.valor
	end	
	def teste_deve_persistir_NF_gerada
		#criar mock
		dao =mock
		#marcando o que esperamos que aconteça
		dao.expects(:persiste)
		gerador=GeradorDeNotaFiscal.new
		pedido=Pedido.new('Maria',1000,1)
		nf=gerador.gera pedido

	end
	def teste_deve_enviar_NF_gerada_para_SAP
	 	dao=stub_everything
	 	sap=mok.tap{|sap|sap.expects(:envia)}
	 	gerador=GeradorDeNotaFiscal.new dao,sap
	 	pedido=Pedido.new('Maria de Fatima',1000,1)
	 	nf=gerador.gera pedido 
	end
	def teste_deve_invocar_acoes_posteriores
		acoe1=mock.tap{|dao|dao.expects(:executar)}
		acoe2=mock.tap{|sap|sap.expects(:executar)}
		gerador+GeradorDeNotaFiscal.new[acoe1,acoe2]
		pedido+Pedido.new('Luana',1000,1)
		nf=geardor.gera pedido
	end
	def teste_deve_caonsultar_a_tabela_para_calcular_valor
		tabela=mock
		tabela.expects(:[]).with(100.0).returns(0.2)
		gerador=gerador_de_nota_fiscal.new[],tabela
		pedido=Pedido.new('Mercedes',1000,1)
		nf=gearador.gera pedido
		assert_equal 1000*0.2,n.valor

		
	end
	
end