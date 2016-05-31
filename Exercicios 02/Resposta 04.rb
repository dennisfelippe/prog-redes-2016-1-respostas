##############################################
### Aluno: Dennis Felippe V. do Nascimento ###
### Matricula: 20152014050012			   ###
##############################################

#Exercicio 04
require 'time'
# Solicitando a Dia da Semana
print "Informe o Dia da Semana de 0 a 6\n0 Para Domingo: "
d = gets.to_i
print "Informe um Ano"
a = gets.to_i
t = Time.new(a,01,01)
t2 = t+60*60*24*365
while t < t2 do
  if t.wday == d then
    puts t.strftime('%d/%m/%Y')
  end
  t += 60*60*24
end
