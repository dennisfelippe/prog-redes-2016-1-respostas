require 'socket'
serverSocket = TCPServer.new(2000)
puts 'Servidor iniciado'
loop{
clientSocket = serverSocket.accept
puts 'Aceitando conexao'
msg = clientSocket.gets.chomp
unless msg == "shutdown"
clientSocket.puts(msg.upcase)#Retorna Caixa Alta
puts 'Menssagem Recebida: ' + msg
puts 'Retorno: ' + msg.upcase
clientSocket.close#Fecha Client
else
clientSocket.puts("bye bye")#Retorna para desligar
puts 'Recebido comando de shutdown'#Exibe cmd desligar
clientSocket.close
break
end
}
serverSocket.close#Fecha Server