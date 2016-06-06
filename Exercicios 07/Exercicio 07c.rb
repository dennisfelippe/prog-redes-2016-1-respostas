require 'socket'
serverSocket = TCPServer.new(2000)
puts 'Que Comecem os Jogos!'
loop {
clientSocket = serverSocket.accept
#Recebe Info
puts 'Recebendo Jogada'
escolha = clientSocket.gets.chomp.upcase
puts 'Jogador fez sua escolha'
clientSocket.puts "Você Escolheu #{escolha}\nAgora Basta Ecolher Seu Numero"
numero = clientSocket.gets.to_i
numero_cpu = rand(0..10)
resultado = numero_cpu+numero
resultado_t = "Aguarda"
if resultado %2 == 0
	resultado_t = "PAR"
else
	resultado_t = "IMPAR"
end
if resultado_t == escolha
	clientSocket.puts("\nO Numero Final foi #{resultado}\n
		Você: #{numero} + Servidor: #{numero_cpu}\n
		Parabens Você Venceu\n
		Você Escolheu #{escolha}\n")
	puts 'o jogador venceu'
else
	clientSocket.puts("\nO Numero Final foi #{resultado}\n
	Você: #{numero} + Servidor: #{numero_cpu}\n
	Que Pena Você Perdeu\n
	Você Escolheu #{escolha}\n")
	puts 'o servidor venceu'
end
clientSocket.close#Fecha Client
}
serverSocket.close#Fecha Server

