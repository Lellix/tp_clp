class Venda < Totalizavel

	attr_accessor :itens, :data, :cliente, :itens, :numero

	def initialize(numero, data, cliente)
		@data = data
		@cliente = cliente
		@numero = numero
		@itens = Array.new
	end

	def total(total)
		total = 1
		super
	end
	def to_s
		"Número: "+@numero+"\nData: "+@data+"\nCliente: "+@cliente.nome+" - RG: "+@rg
	end

	def Add_Item(item)
		@itens << item
	end

end