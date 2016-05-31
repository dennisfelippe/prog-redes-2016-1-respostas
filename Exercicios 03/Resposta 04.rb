class Lampada
	def initialize
		@status = false
		@funcional = true
		unless @funcional
			@status = false
		end
		@uso = 0
		@uso_max = rand(7)
	end

	def vida_util
		@uso_max
	end
	
	def botao
		puts "clic.."
		if @uso <= @uso_max	
			if @funcional
				if @status
				@status = false
				else
				@status = true
				@uso += 1
				end
			else
			@status = false
			end
		end
	end

	def verifica
		if @status
			puts "ligada"
		else
			puts "desligada"
			unless @funcional
				puts "esta queimada"
			end
		end
	end

	def teste
		if @funcional
			puts "Testando ..... A lampada esta boa"
		else
			puts "Testando ..... A lampada esta queimada"
		end
	end
end
# Teste inicial
puts "TESTE INICIAL\n\n"
led_teste = Lampada.new
led_teste.verifica
led_teste.botao
led_teste.verifica
led_teste.botao
led_teste.verifica
led_teste.teste
led_teste.ligada?
puts "FIM DO TESTE INICIAL\n\n\n"

## PROGRAMA ###
puts "RODANDO PROGRAMA TESTE...\n\n"
led = Lampada.new #Cria Lampada 01
led2 = Lampada.new #Cria Lampada 02

puts "A lampada n. 1 pode ser ligada #{led.vida_util} vez(es) antes de queimar"
puts "A lampada n. 2 pode ser ligada #{led2.vida_util} vez(es) antes de queimar"

media = (led.vida_util+led2.vida_util)/2
puts "A Media da vida util das lampadas é de #{media} vez(es)"

puts "FIM DO PROGRAMA TESTE\n\n\n\n"


## PROGRAMA COM 20 LAMPADAS##
puts "RODANDO O PROGRAMA COM 20 LAMPADAS...\n"
a = 20.times.map{Lampada.new}
v = 0
for x in 0...a.size do
	puts "A Lampada n. #{x+1} pode ser ligada #{a[x].vida_util} vez(es) antes de queimar"
	v += a[x].vida_util
end
media2 = v/a.size
puts "A Media da vida util das lampadas é de #{media2} vez(es)\n\n"

puts"FIM DO PROGRAMA"