
require './pessoa.rb'
require './cliente.rb'
require './totalizavel.rb'
require './venda.rb'
require './item_venda'
# criar arrays para armazenar as instâncias dos objetos criados #
clientes = Array.new
itens = Array.new
vendas = Array.new
pessoas = Array.new
# Menu de opcoes#
puts "------ Menu ------"
puts "Digite 1 para adicionar cliente, 2 para remover cliente"
puts "Digite 3 para adicionar um item, 4 para remover um item"
puts "Digite 5 para realizar uma venda"
puts "Sua escolha: "
escolha = gets
escolha = escolha.chomp
puts escolha
case escolha
when '1'
  puts "Preencha as informações: "
  puts "Nome: "
  nome = gets
  nome = nome.chomp
  puts "Endereço: "
  endereco = gets
  endereco = endereco.chomp
  puts "Rg: "
  rg = gets
  rg = rg.chomp
  puts "Data nascimento: "
  nascimento = gets
  nascimento = nascimento.chomp
  cliente = Cliente.new(nome, endereco, rg, nascimento)
  clientes << cliente
when '2'

when '3'
  puts "Preencha as informações: "
  puts "Nome: "
  nome = gets
  nome = nome.chomp
  puts "Valor: "
  valor = gets
  valor = valor.chomp
  puts "Quantidade: "
  quantidade = gets
  quantidade = quantidade.chomp
  item = Item_Venda.new(nome, valor, quantidade)
  itens << item
when '4'
when '5'

else
  puts "Escolha invalida"
end






