class CalculadoraDeSalario 
	#Desenvolvedores possuem 20% de desconto caso seu salário sejamaior
	#do que R$ 3000,0. Caso contrário, o desconto é de 10%.
	# DBAs e testadores possuem desconto de 25% se seus salários forem
	#maiores do que R$ 2500,0. 15%, em caso contrário.
	def calcula_salario funcionario
#		if funcionario.cargo == Cargo::DESENVOLVEDOR
#			return 3200 if funcionario.salario > 3000
#		return 1350.0
#		end
#		return 425.0
	#return 1500 * 0.9
	return funcionario.salario * 0.8 if funcionario.salario > 3000
	return funcionario.salario * 0.9
	end

	
	
end