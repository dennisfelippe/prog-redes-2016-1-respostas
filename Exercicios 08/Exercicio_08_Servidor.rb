require 'socket'

serverSocket = TCPServer.new(5000)
puts "Server Started"

# Candidatos
c1 = ['1', 'paulo', 0]
c2 = ['2', 'pedro', 0]
c3 = ['3', 'ana', 0]
senha = 'senha'
mutex = Mutex.new
begin

loop {
	Thread.start(serverSocket.accept) do |clientSocket|
		request = clientSocket.gets.chomp.split(" ") #Recebe a Mensagem de Solicitação e Divide o Texto
		mutex.synchronize{
		if request[0] == 'candidatos?'
			clientSocket.puts("#{c1[0]} #{c1[1]}"+"#"+"#{c2[0]} #{c2[1]}"+"#"+"#{c3[0]} #{c3[1]}")
				request2 = clientSocket.gets.chomp.split(" ")
			if request2[0] == 'votar'
				if request2[1] == '1'
				c1[2] += 1
				clientSocket.puts("ok")
				elsif request2[1] == '2'
				c2[2] += 1
				clientSocket.puts("ok")
				elsif request2[1] == '3'
				c3[2] += 1
				clientSocket.puts("ok")
				else
				clientSocket.puts(0)
				end
			else
				clientSocket.puts(0)
			end

		elsif request[0] == 'votar'
			if request[1] == '1'
				c1[2] += 1
				clientSocket.puts("ok")
			elsif request[1] == '2'
				c2[2] += 1
				clientSocket.puts("ok")
			elsif request[1] == '3'
				c3[2] += 1
				clientSocket.puts("ok")
			else
				clientSocket.puts(0)
			end
		elsif request[0] == 'resultado'
			if request[1] == senha
				clientSocket.puts("#{c1[0]} #{c1[1]} #{c1[2]} Votos"+"#"+"#{c2[0]} #{c2[1]} #{c2[2]} Votos"+"#"+"#{c3[0]} #{c3[1]} #{c3[2]} Votos")
			else
				clientSocket.puts(0)
			end
		else
			clientSocket.puts(0)
		end
			}
	clientSocket.close
	end
}

ensure
serverSocket.close
end