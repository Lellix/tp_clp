class Totalizavel
  	class TotalizavelAbstratoErroInstaciacao < RuntimeError
	end

	def initialize
		raise TotalizavelAbstratoErroInstaciacao, "Nao se pode instanciar essa classe diretamente"
	end

	def total(total)
		@total = total
		puts "Total: #{@total}"
		#calcula o total da compra
	end

end