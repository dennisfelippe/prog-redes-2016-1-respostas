require 'socket'
serverSocket = TCPServer.new(2000)
puts 'Servidor iniciado'
loop{
clientSocket = serverSocket.accept
puts 'Recebe Frase'
frase = clientSocket.gets.chomp
puts 'Recebe Palvra'
palavra = clientSocket.gets.chomp
verifica = frase.split
count = 0
for x in verifica
	if x == palavra
		count += 1
	end
end
clientSocket.puts("A Palavra #{palavra} aparece #{count} vezes na frase")#Retorna
puts 'Retorna Resposta'
clientSocket.close#Fecha Client
}
serverSocket.close#Fecha Server


