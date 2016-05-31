##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			         ###
##############################################

#Exercicio 03

# Solicitando a Data 01
print "Insira o ano de fabricação com 4 digitos: "
a1 = gets.to_i
print "Insira o mes de fabricação: "
m1 = gets.to_i
print "Insira o dia da data de fabricação: "
d1 = gets.to_i
print "Insira a quantidade de dias que restam\npara o produto vencer: "
v1 = gets.to_i
puts "Segue abaixo a ultima data valida para consumo:"
x = Time.new(a1, m1, d1)
x += 3600*24*v1
puts x.strftime('%d/%m/%Y')
