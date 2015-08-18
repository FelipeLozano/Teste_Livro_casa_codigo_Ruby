#encoding: UTF-8
require 'minitest/autorun'
require 'test/unit'
require_relative '../lib/item.rb'
require_relative '../lib/carrinho_de_compras.rb'
#require_relative '../lib/maior_preco.rb'
class TesteCarrinhoDeCompras < Test::Unit::TestCase
	def teste_deve_retornar_zero_se_o_carrinho_vazio
		carrinho=CarrinhoDeCompras.new
		#algoritmo =MaiorPreco.new
		#valor=algoritmo.encontrar carrinho
		assert_equal 0, carrinho.maior_valor
	end
	def teste_deve_retornar_valor_do_item_se_carrinho_com_1_elemento
		carrinho = CarrinhoDeCompras.new
		carrinho << Item.new('Geladeira', 1 ,900.0)
		#algoritmo= MaiorPreco.new
		#valor=algoritmo.encontrar carrinho
		assert_equal 900.0, carrinho.maior_valor
		
	end
	def teste_deve_retornar_maior_valor_se_carrinho_contem_muitos_elementos
		carrinho=CarrinhoDeCompras.new
		carrinho<<Item.new('Geladeira',1,900.0)
		carrinho<<Item.new('Fogão',1,1500.0)
		carrinho<<Item.new('Maquina de Lavar',1,750.0)
		#algoritmo=MaiorPreco.new
		#valor=algoritmo.encontrar carrinho
		assert_equal 1500.0,carrinho.maior_valor


	end
	
	
end