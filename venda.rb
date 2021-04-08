class Venda < Totalizavel

	att_acessor :numero, :data, :cliente, :itens

	@def initialize(numero, data, cliente)
		@numero = numero
		@data = data
		@cliente = Cliente.new(cliente.nome, cliente.endereco, ciente.rg, cliente.data_nascimento)
		@itens = Array.new
	end

	def to_s
		"Número: "+@numero+"\nData: "+@data+"\nCliente: "+@cliente.nome+" - RG: "+@rg
	end

	def Add_Item(item)
		itens << item
	end

end