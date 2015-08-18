#encoding: UTF-8
require 'minitest/autorun'
require_relative '../lib/item.rb'
require 'test/unit'
class ItemTest < Test::Unit::TestCase
	def teste_alternativa_1
		item= item_que_veio_do_metodo_sob_teste
		assert_equal 'Geladeira',item.decricao
		assert_equal 900.0,item.valor_unitario
		assert_equal 1,item.quantidade
		assert_equal 900.0, item.valor_total
	end
	def teste_alternativa_2
		item =item_que_veio_do_metodo_sob_teste
		item_esperado=Item.new('Geladeira',1,900.0)
		assert_equal item_esperado,item
	end
	def Item_que_veio_do_metodo_sob_teste
		Item.new('Geladera',1,900.0)
	end
	def teste_deve_adicionar_itens
		#garanti que o carrinho esta vazio
		assert_equal 0,@carrinho.itens.size
		item=item.new('Geladeira',1,900.0)
		@carrinho << item
		assert_equal 1, @carrinho.itens.size
		assert_equal item,@carrinho.itens[0]
	end
	
	
end