class Item_Venda < Totalizavel

  attr_accessor :nome, :valor, :quantidade, :produto

  def initialize(valor, quantidade) # Construtor
    @valor = valor
    @quantidade = quantidade
    @total = 0
    @produto
  end

  def removeitem(nome) # Verifica se o item existe
    if @nome.eql?(nome)
      return true
    else
      return false
    end
  end
  
  def total # Armazena o valor resultante do preço do produto multiplicado pela quantidade desejada
    @total = @valor * @quantidade
  end

  def to_s
    "Total: #{@total} Valor: #{@valor} Quantidade: #{@quantidade}"
  end

end
