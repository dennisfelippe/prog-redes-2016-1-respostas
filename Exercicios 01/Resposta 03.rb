##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			   ###
##############################################

#Exercicio 03
puts "Digite aqui sua palavra a ser verificada como palíndromo."
palavra = gets.chomp
if palavra == palavra.reverse
puts "A Palavra #{palavra} é um palíndromo"
else
puts "A Palavra #{palavra} não é um palíndromo"	
end