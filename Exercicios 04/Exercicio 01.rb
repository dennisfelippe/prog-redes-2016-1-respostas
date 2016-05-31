begin
puts "Insira o nome do arquivo a ser analisado"
arquivo = gets.chomp
contagem =[]
IO.foreach("#{arquivo}"){|linha| linha.split(" ").each do |x| contagem << x end}
puts "O numero de palavras do texto é: #{contagem.size}"
rescue Exception
	puts "Não foi possivel localizar o arquivo"
	exit
end