require 'socket' # Abre Conexão
host = 'localhost'
port = 5000
threads = []

for i in 1..1000 do
t = Thread.start(TCPSocket.new(host, port)) do |socket|
socket.puts('candidatos?')
puts socket.gets
voto = rand(1..3).to_s
socket.puts("votar #{voto}")
puts socket.gets
socket.close
end
threads.push(t)
end
threads.each do |t| #Aguarda Para Fechamento
t.join
end'