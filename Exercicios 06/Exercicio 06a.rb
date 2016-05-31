require 'socket'
serverSocket = TCPServer.new(2000)
puts 'Servidor iniciado'
loop{
clientSocket = serverSocket.accept
puts 'Aceitando conexao'
msg = clientSocket.gets.chomp
clientSocket.puts(msg.upcase)#Retorna Caixa Alta
puts 'Menssagem Recebida: ' + msg
puts 'Retorno: ' + msg.upcase
clientSocket.close#Fecha Client
}
serverSocket.close#Fecha Server