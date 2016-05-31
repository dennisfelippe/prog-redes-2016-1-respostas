##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			   ###
##############################################

#Exercicio 02
puts "Digite aqui sua palavra a ser verificada a quantidade de vogais."
frase = gets.chomp.split("")
n = frase.select { |v| v =~ /[aeiou]/ }
puts "Foram Encontradas a seguinte quantidade de vogais: #{n.size}"
