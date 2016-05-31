##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			   ###
##############################################

#Exercicio 01
puts "Digite aqui sua frase a ser verificada."
frase = gets.chomp.split("")
puts "Digite aqui o caractere a ser localizado na frase"
caractere = gets.chomp
n = 0
frase.each do |x| if x == caractere
	n += 1
end
end
puts "Foram Encontrados #{n} vezes o caractere #{caractere}."
