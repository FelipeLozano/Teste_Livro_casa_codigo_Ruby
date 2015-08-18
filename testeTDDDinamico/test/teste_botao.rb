require 'minitest/autorun'
#require 'mocha/setup'
require 'test/unit'
require 'mock'
require_relative '../lib/botao.rb'

class TesteBotao < Test::Unit::TestCase
	def teste_boato_no_alvo
		#botao= Botao.new(:teste)
		botao=Botao.new(lambda{|alvo|alvo.teste})
		alvo = mock
		alvo.expects(:teste).with()
		botao.executa_em(alvo)
	end
	def teste_chama_metodo_no_alvo_com_parametros_ao_executar
		#botao= Botao.new(:teste,:parametro1,[:parametro2])
		botao=Botao.new(lambda{|alvo|alvo.teste(:parametro1,[:parametro2])})
		alvo = mock
		alvo.expects(:teste).with(:parametro1,[:parametro2])
		botao.executa_em(alvo)
	end
end