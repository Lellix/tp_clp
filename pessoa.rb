class Pessoa

	attr_accessor :nome, :endereco

	def initialize(nome, endereco)
			@nome = nome
			@endereco = endereco
	end

  def removepessoa(nome, endereco)
		if @nome.eql?(nome) && @endereco.eql?(endereco)
			return true
		else
			return false
		end
	end

  def alterar_pessoa(variavel, conteudo)
		if variavel == 'nome'
		  @nome = conteudo
		elsif variavel == 'endereco'
		  @endereco = conteudo
		end
	end

	def to_s
		"Nome: #{@nome} -  Endereço: #{@endereco}"
	end
	
end