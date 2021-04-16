class Totalizavel
  	class TotalizavelAbstratoErroInstaciacao < RuntimeError
	end

	def initialize
  		raise TotalizavelAbstratoErroInstaciacao, "Nao se pode instanciar essa classe diretamente"
  end

	def total(total)
  		i=0
  		dois = 0.0
  		while i < total.length
  		dois = total.at(i).total + dois
  		i+=1
			end
			puts "Total: " + dois.to_s
  		#calcula o total da compra
	end

end