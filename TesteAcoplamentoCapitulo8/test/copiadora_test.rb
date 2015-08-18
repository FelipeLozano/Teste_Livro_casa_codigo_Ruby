#encoding: UTF-8
require 'minitest/autorun'
require 'mocha/setup'
require_relative '../lib/copiadora.rb'

class CopiadoraTest < MiniTest::Unit::TestCase
	def teste_deve_ler_e_enviar_o_conteudo_lido
		escritor=mock
		leitor=mock
		leitor.expect(:te_caracteres).twice.return(true,false)
		leitor.expect(:le_caracteres).return('Maria')
		copiadora=Copiadora.new leitor, escritor
		copiadora.capiar
	end
end