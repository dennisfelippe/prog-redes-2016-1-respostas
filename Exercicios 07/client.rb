require 'socket'

hostname = 'localhost'
port = 2000
#send
s = TCPSocket.open(hostname, port)
puts "Insira Frase"
s.puts(gets)
puts "Insira Palavra"
s.puts(gets)

line = s.gets.chomp
puts line
#close
s.close