class Produto

  attr_accessor :codigo, :nome, :valor

  def initialize(codigo, nome, valor)
    @codigo = codigo
    @nome = nome
    @valor = valor
  end
  def achaproduto(nome)
    if @nome.eql?(nome)
      return true
    else
      return false
    end
  end

end