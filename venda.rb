class Venda < Totalizavel

  attr_accessor :itens, :data, :cliente, :itens, :numero

  def initialize(numero, data, cliente)
    @numero = numero
    @data = data
    @cliente = cliente
    @itens = Array.new
  end

  def total(total)
    total = @itens
    super
  end

  def to_s
    "Número: #{@numero}\nData: #{@data}\nCliente: #{@cliente.nome} - RG: #{@cliente.rg}"
  end

end