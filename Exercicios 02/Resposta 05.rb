##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			   ###
##############################################

#Exercicio 05
require 'time'
t = Time.new( 1986, 11)
ano = 60*60*24*365.25
puts (t - ano*2*75.3).strftime('%m/%Y')
puts (t - ano*75.3).strftime('%m/%Y') #Aparicao Anterior
t2 =Time.new( 3000)
while t < t2 do
    puts t.strftime('%m/%Y')
    t += ano*75.3
end
