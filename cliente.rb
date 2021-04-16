# frozen_string_literal: true

class Cliente < Pessoa
  attr_accessor :rg, :data_nascimento

  def initialize(nome, endereco, rg, data_nascimento)
    super(nome, endereco)
    @rg = rg
    @data_nascimento = data_nascimento
  end

  def achacliente(nome, rg)
    if @nome.eql?(nome) && @rg.eql?(rg)
      puts "Achado"
      return true
    end
      return false
  end

  def alterar_cliente(variavel, conteudo)
    if(variavel == 'nome')
      @nome = conteudo
    elsif(variavel == 'endereco')
      @endereco == conteudo
    elsif(variavel == 'rg')
      @rg = conteudo
    elsif(variavel == 'data_nascimento')
      @data_nascimento = conteudo
    end
  end


  def to_s
    "Nome: #{@nome} \n -  Endereço: #{@endereco}RG: #{@rg} \n -  Data de Nascimento: #{@data_nascimento}"
  end
end