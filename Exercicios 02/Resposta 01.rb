##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			   ###
##############################################

#Exercicio 01
chrono = []
# Solicitando a Data 01
print "Insira o Ano com 4 digitos para data 1: "
a1 = gets.to_i
print "Insira o Mes para a data 1: "
m1 = gets.to_i
print "Insira o Dia para a data 1: "
d1 = gets.to_i
# Formando a Data 01
data1 = Time.new(a1, m1, d1)
chrono << data1
puts "\n"
#Solicitando a Data 02
print "Insira o Ano com 4 digitos para data 2: "
a2 = gets.to_i
print "Insira o Mes para a data 2: "
m2 = gets.to_i
print "Insira o Dia para a data 2: "
d2 = gets.to_i
# Formando a Data 02
data2 = Time.new(a2, m2, d2)
chrono << data2
puts "\n"
#Solicitando a Data 03
print "Insira o Ano com 4 digitos para data 3: "
a3 = gets.to_i
print "Insira o Mes para a data 3: "
m3 = gets.to_i
print "Insira o Dia para a data 3: "
d3 = gets.to_i
# Formando a Data 02
data3 = Time.new(a3, m3, d3)
chrono << data3
puts "\n"
# Mostrando as Datas em Sequencia Cronologica
puts "Segue abaixo as datas em sequencia cronologica:"
chrono.sort.each do |x| puts x.strftime('%d/%m/%Y') end