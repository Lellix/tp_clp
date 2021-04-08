class Cliente < Pessoa

	att_acessor :rg, :data_nascimento

	def initialize(nome, endereco, rg, data_nascimento)
		super(nome, endereco)
		@rg = rg
		@data_nascimento = data_nascimento
	end

	def to_s
		"Nome: "+@nome+" \n -  Endereço: "+@endereco+"RG: "+@rg+" \n -  Data de Nascimento: "+@data_nascimento
	end

end