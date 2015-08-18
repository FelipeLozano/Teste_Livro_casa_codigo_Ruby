require'rubygems'
require 'test/unit'
#require 'produto'
require 'carrinho_de_compras'
require 'maior_e_menor'
gem "test-unit"
class TestaMaiorEMenor < Test::Unit::TestCase
	def teste_ordem_decrescente
		carrinho = CarrinhoDeCompras.new
		carrinho << Produto.new('Geladeira', 450.0)
		carrinho << Produto.new('Liquidificador', 250.0)
		carrinho << Produto.new('Jogo de pratos', 70.0)
		algoritmo = MaiorEMenor.new
		algoritmo.encontra carrinho
		assert_equal 'Jogo de pratos', algoritmo.menor.nome
		assert_equal 'Geladeira', algoritmo.maior.nome
	end
end