class Item_Venda < Totalizavel

	att_acessor :produto, :valor, :quantidade

	@def initialize(produto, quantidade)
		@produto = produto.nome
		@valor = produto.valor
		@quantidade = quantidade
	end

	def to_s
		"Produto: "+@produto+"\nValor: "+@valor+"\nQuantidade: "+@quantidade
	end

	def total
		valor*quantidade
	end

end