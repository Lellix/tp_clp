class Venda < Totalizavel

  attr_accessor :itens, :data, :cliente, :itens, :numero

  def initialize(numero, data, cliente)
    @numero = numero
    @data = data
    @cliente = cliente
    @itens = Array.new
  end

  def total(total) # Retorna o valor total da compra
    itens_aux = @itens

	i=0
	aux = 0.0

	while i < itens_aux.length
	  aux = itens_aux.at(i).total + aux
	  i+=1
  	end
	total = aux
    super
  end

  def to_s
    "Número: #{@numero}\nData: #{@data}\nCliente: #{@cliente.nome} - RG: #{@cliente.rg}"
  end

end
