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

  def alterar(variavel, conteudo)
    if variavel == 'codigo'
      @codigo = conteudo
    elsif variavel == 'nome'
      @nome = conteudo
    elsif variavel == 'valor'
      @valor = conteudo
    end
  end

  def to_s
    "Codigo: #{@codigo} Nome: #{@nome} Valor: #{@valor}"
  end

end