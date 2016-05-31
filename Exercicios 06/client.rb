require 'socket'

hostname = 'localhost'
port = 50123
#send
s = TCPSocket.open(hostname, port)
s.puts('Aluno Redes')

#read test
line = s.gets.chomp
puts line

#close
s.close