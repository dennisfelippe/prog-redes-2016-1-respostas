class Retangulo
	attr_accessor :largura, :altura

	def area
		@largura*@altura
	end

	def perimetro
		@largura*2+@altura*2
	end

	def set_dimensoes(largura,altura)
		if (largura > 0) and (altura > 0)
		@largura = largura
		@altura = altura
		else
		puts "Favor Reinsira os Valores\nos mesmos devem ser maiores que 0."
		end
	end

	def quadrado?
		if @largura == @altura
			return true
		else
			return false
		end
	end
end

#### PROGRAMA TESTE ####

teste = Retangulo.new
teste.set_dimensoes(2,5)
puts teste.area
puts teste.perimetro
puts teste.quadrado?
