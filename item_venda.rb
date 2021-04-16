class Item_Venda < Totalizavel

  attr_accessor :nome, :valor, :quantidade, :produto

  def initialize(valor, quantidade)
    @valor = valor
    @quantidade = quantidade
    @total = 0
    @produto
  end

  def removeitem(nome)
    if @nome.eql?(nome)
      return true
    else
      return false
    end
  end
  
  def total
    @total = @valor * @quantidade
  end

  def to_s
    "Total: #{@total} Valor: #{@valor} Quantidade: #{@quantidade}"
  end

end
