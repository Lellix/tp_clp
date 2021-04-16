# frozen_string_literal: true

require './pessoa'
require './cliente'
require './totalizavel'
require './venda'
require './item_venda'
require './produto'
require './interface'

# Arrays responsáveis por armazenar a os objetos criados #
clientes = []
itens = []
vendas = []
pessoas = []
produtos = []
escolha = 0

def visualizar
  clientes.to_s
  itens.to_s
  vendas.to_s
  pessoas.to_s
  produtos.to_s
end

interface = Interface.new() # Objeto responsável por manipular a interface em linha de código do programa #

# #
while escolha != -1

  escolha = interface.opcao

  case escolha
  when '1' # Adicionar pessoa #

    nome = interface.get_var("Digite os dados da pessoa: \nNome: ")
    endereco = interface.get_var('Endereco: ')

    pessoa = Pessoa.new(nome, endereco)
    pessoas << pessoa

  when '2' # Remover pessoa#

    if !pessoas.empty?

      nome = interface.get_var('Nome: ')
      endereco = interface.get_var('Endereço: ')

      i = 0
      bool = false

      while i < pessoas.length && !bool
        bool = pessoas.at(i).removepessoa(nome, endereco)
        i += 1
      end

      if bool == true
        pessoas.delete_at(i - 1)
        puts 'Deletado'
      end
    else
      puts 'Sem pessoas adicionadas'
    end

  when '3' # Adicionar produto#

    codigo = interface.get_var("Preencha as informações: \nDigite o código: ").to_i
    nome = interface.get_var('Digite o nome: ')
    valor = interface.get_var('Digite o valor: ').to_f

    produto = Produto.new(codigo, nome, valor)
    produtos << produto

  when '4' # Remover produto#

    if !produtos.empty?

      nome = interface.get_var('Nome: ')

      i = 0
      bool = false

      while i < produtos.length && !bool
        bool = produtos.at(i).achaproduto(nome)
        i += 1
      end

      if bool == true
        produtos.delete_at(i - 1)
        puts 'Deletado'
      end
    else
      puts 'Lista de produtos vazia'
    end
  when '5' # Realizar venda#

    numero = interface.get_var("Preencha as informações. \nNúmero: ")
    data = interface.get_var('Data: ')

    if pessoas.length.zero? # Se a lista de pessoas for vazia, nao executar o resto#
      puts 'Lista de pessoas vazia'

    else
      escolha = interface.get_var('O cliente já está registrado? (1 para sim, 0 para não): ')

      case escolha
      when '0' # OPCAO 0#
        nome = interface.get_var('Digite o nome do cliente: ')
        endereco = interface.get_var('Digite o endereço do cliente: ')
          
        i = 0
        bool = false

        while i < pessoas.length && !bool #Compara se a pessoa existe#
          bool = pessoas.at(i).removepessoa(nome, endereco)
          i += 1
        end

        if bool == true

          rg = interface.get_var("Nome e endereco conferem. \nDigite o rg do cliente: ")
          nascimento = interface.get_var('Digite a data de nascimento do cliente: ')

          cliente = Cliente.new(nome, endereco, rg, nascimento)
          clientes << cliente
          venda = Venda.new(numero, data, cliente)
          j=0

          while j!=-1
            nome = interface.get_var("Registre os itens. \nNome:")

            i = 0
            bool = false

              while i < produtos.length && !bool
                bool = produtos.at(i).achaproduto(nome)
                i += 1
              end

            if bool == true
              quantidade = interface.get_var('Digite a quantidade:').to_i

              item = Item_Venda.new(produtos.at(i - 1).valor, quantidade)
              item.produto = produtos.at(i - 1)
              item.total
              venda.itens << item
              total=Array.new
              venda.total(total)
              j = interface.get_var('Digite -1 para parar a compra').to_i

            end
          end
        else
          puts 'Nome e endereco nao conferem'
        end

      when '1' # OPCAO 1#

        nome = interface.get_var('Digite o nome:')
        rg = interface.get_var('Digite o RG: ')

        i = 0
        bool = false

        while i < clientes.length && !bool
          bool = clientes.at(i).achacliente(nome, rg)
          i += 1
        end

        if bool
          puts 'Encontrado!'
          venda = Venda.new(numero, data, clientes.at(i - 1))
          j=0
          while j!=-1

          nome = interface.get_var("Registre os itens. \nNome:")

          i = 0
          bool = false

            while i < produtos.length && !bool
              bool = produtos.at(i).achaproduto(nome)
              i += 1
            end

          if bool == true

            quantidade = interface.get_var('Digite a quantidade: ').to_i

            item = Item_Venda.new(produtos.at(i - 1).valor, quantidade)
            item.produto = produtos.at(i - 1)
            item.total
            venda.itens << item
            total=Array.new
            venda.total(total)
            j = interface.get_var('Digite -1 para parar a compra').to_i
            end
          end

        end
      end
    end
  when '6'
    id = interface.get_var("Digite o nome da pessoa que deseja alterar: ")
    i = 0

    until pessoas[i].nome.eql?(id)
      i = i+1 
    end

    variavel = interface.get_var('Digite qual informação da pessoa deseja alterar: ')
    informacao = interface.get_var('Digite a nova informação: ')

    pessoas[i].alterar_pessoa(variavel, informacao)
  when '7'
    id = interface.get_var("Digite o rg do cliente que deseja alterar: ")
    i = 0

    until clientes[i].rg.eql?(id)
      i = i+1 
    end

    variavel = interface.get_var('Digite qual informação do cliente deseja alterar: ')
    informacao = interface.get_var('Digite a nova informação: ')

    clientes[i].alterar_cliente(variavel, informacao)
  when '8'
    id = interface.get_var("Digite o codigo do produto que deseja alterar: ")
    i = 0
  
    until produtos[i].codigo.eql?(id)
      i = i+1 
    end
  
    variavel = interface.get_var('Digite qual informação do produto deseja alterar: ')
    informacao = interface.get_var('Digite a nova informação: ')
  
    produtos[i].alterar(variavel, informacao)
  when '9'
    visualizacoes = interface.get_var.to_i

    case visualizacoes
    when '1'
      pessoas.each do |i|
        pessoas[i].to_s
      end
    when '2'
      clientes.each do |i|
        pessoas[i].to_s
      end
    when '3'
      produtos.each do |i|
        pessoas[i].to_s
      end
    when '4'
      vendas.each do |i|
        pessoas[i].to_s
      end
    when '-1'
    else
    end
  when '-1'
    break
  else
    puts 'Escolha invalida'
  end
end
