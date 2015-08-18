#encoding: UTF-8
require 'minitest/autorun'
require 'test/unit'
require_relative '../lib/calculadora.rb'

class CalculadoraTest < Test::Unit::TestCase
	def teste_deve_somar_um_mais_um
		assert_equal 2, Calculadora.new.soma(1,1)
	end
	def teste_deve_somar_um_mais_dois
		assert_equal 3,Calculadora.new.soma(1,2)
	end
	def teste_deve_somar_dois_mais_dois
		assert_equal 4,Calculadora.new.soma(2,2)
	end
	def teste_deve_somar_positivo_com_negativo
		assert_equal 4,Calculadora.new.soma(6,-2)
	end
	def teste_deve_somar_negativo_com_positivo
		assert_equal -4,Calculadora.new.soma(-6,2)
	end
	def teste_deve_somar_dois_numero_negativo
		assert_equal -4,Calculadora.new.soma(-2,-2)
	end
	def teste_deve_soma_com_zero
		assert_equal 4,Calculadora.new.soma(0,4)
		assert_equal 4,Calculadora.new.soma(4,0)
	end
	
	
end