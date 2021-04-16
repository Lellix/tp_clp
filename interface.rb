class Interface

    def opcao

        puts '------ Menu ------'
        puts 'Digite 1 para adicionar Pessoa, 2 para remover Pessoa'
        puts 'Digite 3 para adicionar um produto, 4 para remover um produto'
        puts 'Digite 5 para realizar uma venda'
        puts 'Digite 6 para alterar uma pessoa'
        puts 'Digite 7 para alterar um cliente'
        puts 'Digite 8 para alterar um item'
        puts 'Digite 9 para visualizações'
        puts 'Digite -1 para sair do programa'
        puts 'Sua escolha: '
        escolha = gets
        escolha = escolha.chomp

        return escolha
    end

    def visualizacoes

        puts '------ Menu ------'
        puts 'Digite 1 para visualizar Pessoas'
        puts 'Digite 2 para visualizar Clientes'
        puts 'Digite 3 para visualizar Produtos'
        puts 'Digite 4 para visualizar Vendas'
        puts 'Digite -1 para sair do programa'
        puts 'Sua escolha: '
        escolha = gets
        escolha = escolha.chomp

        return escolha
    end

    def get_var(mensagem)

        puts mensagem
        var = gets
        var = var.chomp

        return var
    end

end