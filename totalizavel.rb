class Totalizavel
  	class TotalizavelAbstratoErroInstaciacao < RuntimeError
	end

	def initialize
  		raise TotalizavelAbstratoErroInstaciacao, "Nao se pode instanciar essa classe diretamente"
  end

	def total(total) # Calcula o total da compra. 
		puts "Total: #{total}"
	end

end