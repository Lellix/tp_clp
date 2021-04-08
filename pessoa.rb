class Pessoa

	att_acessor :nome, :endereco

	def initialize(nome, endereco)
		@nome = nome
		@endereco = endereco
	end

	def to_s
		"Nome: "+@nome+" \n -  Endereço: "+@endereco
	end
	
end