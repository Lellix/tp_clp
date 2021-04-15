class Item_Venda < Totalizavel

	attr_accessor :nome, :valor, :quantidade

	def initialize(nome, valor , quantidade)
		@nome = nome
		@valor = valor
		@quantidade = quantidade
	end

	def to_s
		"Produto: "+ @nome +"\nValor: " + @valor +"\nQuantidade: " + @quantidade
	end

	def total
		valor*quantidade
	end

end