# frozen_string_literal: true

require './pessoa'
require './cliente'
require './totalizavel'
require './venda'
require './item_venda'
require './produto'
# criar arrays para armazenar as instâncias dos objetos criados #
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
while escolha != -1
  # Menu de opcoes#
  puts '------ Menu ------'
  puts 'Digite 1 para adicionar Pessoa, 2 para remover Pessoa'
  puts 'Digite 3 para adicionar um produto, 4 para remover um produto'
  puts 'Digite 5 para realizar uma venda'
  puts 'Digite -1 para sair do programa'
  puts 'Sua escolha: '
  escolha = gets
  escolha = escolha.chomp
  case escolha
  when '1' # Adicionar pessoa#
    puts 'Preencha as informações: '
    puts 'Nome: '
    nome = gets
    nome = nome.chomp
    puts 'Endereço: '
    endereco = gets
    endereco = endereco.chomp
    pessoa = Pessoa.new(nome, endereco)
    pessoas << pessoa
  when '2' # Remover pessoa#
    if !pessoas.empty?
      puts 'Nome: '
      nome = gets
      nome = nome.chomp
      puts 'Endereco: '
      endereco = gets
      endereco = endereco.chomp
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
    puts 'Preencha as informações: '
    puts 'Digite o codigo: '
    codigo = gets.to_i
    puts 'Digite o nome: '
    nome = gets
    nome = nome.chomp
    puts 'Digite o valor: '
    valor = gets.to_f
    produto = Produto.new(codigo, nome, valor)
    produtos << produto
  when '4' # Remover produto#
    if !produtos.empty?
      puts 'Nome: '
      nome = gets
      nome = nome.chomp
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
    puts 'Preencha as informações: '
    puts 'Numero: '
    numero = gets
    numero = numero.chomp
    puts 'Data: '
    data = gets
    data = data.chomp
    if pessoas.length.zero? # Se a lista de pessoas for vazia, nao executar o resto#
      puts 'Lista de pessoas vazia'
    else
      puts 'O cliente ja e registrado? (1 para sim, 0 para nao): '
      escolha = gets
      escolha = escolha.chomp
      case escolha
      when '0' # OPCAO 0#
        puts 'Digite o nome do cliente: '
        nome = gets
        nome = nome.chomp
        puts 'Digite o endereco do cliente: '
        endereco = gets
        endereco = endereco.chomp
        i = 0
        bool = false
        while i < pessoas.length && !bool #Compara se a pessoa existe#
          bool = pessoas.at(i).removepessoa(nome, endereco)
          i += 1
        end
        if bool == true
          puts 'Nome e endereco conferem'
          puts 'Digite o rg do cliente: '
          rg = gets
          rg = rg.chomp
          puts 'Digite a data de nascimento do cliente: '
          nascimento = gets
          nascimento = nascimento.chomp
          cliente = Cliente.new(nome, endereco, rg, nascimento)
          clientes << cliente
          venda = Venda.new(numero, data, cliente)
          j=0
          while j!=-1
          puts 'Registre os itens' # Registrar os itens da compra#
          puts 'Nome: '
          nome = gets
          nome = nome.chomp
          i = 0
          bool = false
           while i < produtos.length && !bool
             bool = produtos.at(i).achaproduto(nome)
             i += 1
           end
          if bool == true
            puts('Digite a quantidade: ')
            quantidade = gets.to_i
            item = Item_Venda.new(produtos.at(i - 1).valor, quantidade)
            item.produto = produtos.at(i - 1)
            item.total
            venda.itens << item
            puts 'Digite -1 para parar a compra'
            j = gets.to_i
            end
          end
        else
          puts 'Nome e endereco nao conferem'
        end
      when '1' # OPCAO 1#
        puts 'Digite o nome: '
        nome = gets
        nome = nome.chomp
        puts 'Digite o rg: '
        rg = gets
        rg = rg.chomp
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
          puts 'Registre os itens'  # Registrar os itens da compra#
          puts 'Nome: '
          nome = gets
          nome = nome.chomp
          i = 0
          bool = false
           while i < produtos.length && !bool
             bool = produtos.at(i).achaproduto(nome)
             i += 1
           end
          if bool == true
            puts('Digite a quantidade: ')
            quantidade = gets.to_i
            item = Item_Venda.new(produtos.at(i - 1).valor, quantidade)
            item.produto = produtos.at(i - 1)
            item.total
            venda.itens << item
            puts 'Digite -1 para parar a compra'
            j = gets.to_i
            end
          end

        end
      end
    end
  when '-1'
    break
  else
    puts 'Escolha invalida'
  end
end
