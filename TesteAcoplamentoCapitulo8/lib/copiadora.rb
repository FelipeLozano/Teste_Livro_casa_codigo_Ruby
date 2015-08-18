class Copiadora
	def copiar
		leitor=LeitorDeXML.new
		escritor=EscritorPelaSerial.new
		while leitor.tem_caracteres
			escritor.escreve leitor.le_caracteres
		end
	end
	
end