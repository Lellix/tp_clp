class Item_Venda < Totalizavel

	attr_accessor :nome, :valor, :quantidade, :produto

	def initialize(valor, quantidade)
		@valor = valor
		@quantidade = quantidade
		@produto = Array.new
		@total = valor * quantidade
	end

	def to_s
		"Produto: "+ @nome +"\nValor: " + @valor +"\nQuantidade: " + @quantidade
	end
  def removeitem(nome)
		if @nome.eql?(nome)
			return true
		else
			return false
		end
	end
	def total(total)
		@valor * @quantidade
	end

end
