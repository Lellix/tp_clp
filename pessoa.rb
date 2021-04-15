class Pessoa

  attr_accessor :nome, :endereco
	 def initialize(nome, endereco)
 		@nome = nome
 		@endereco = endereco
 	end

	 def to_s
 		"Nome: "+@nome+" \n -  Endereço: "+@endereco
 	end
	
end