class Fracao
  attr_accessor :numerador
  attr_reader :denominador


  def initialize(num,den)
    @numerador=num
    self.denominador=den
  end

    def denominador=(den)
      if den.to_i != 0
        @denominador = den
      end
    end


  def subtrair(f)
  n = @numerador*f.denominador-f.numerador*@denominador
 	d = @denominador*f.denominador
 	simplifica(n,d)
  end

  def multiplicar(f)
  	n = @numerador*f.numerador
  	d = @denominador*f.denominador
  	simplifica(n,d)
  end

  def somar(f)
  	n = @numerador*f.denominador+f.numerador*@denominador
  	d = @denominador*f.denominador
  	simplifica(n,d)
  end

  def to_f
	@numerador/@denominador.to_f
  end

  def simplifica(n,d)
    div = 2
    while div <= d
      if n%div==0 and d%div==0
        n = n/div
        d = d/div
        div=div-1
      end
      div=div+1
    end
    Fracao.new(n,d) 
 end

  def verifica
    puts @numerador.to_s+"/"+@denominador.to_s
  end

end

puts "Criando Fração f = 21/7"
f = Fracao.new(21,7)
puts "Criando Fração f1 = 7/3"
f1 = Fracao.new(7,3)

puts "Subitraindo Fração f - f1"
f2 =f.subtrair(f1)
f2.verifica

puts "Somando Fração f + f1"
f3 = f.somar(f1)
f3.verifica

puts "Multiplicando Fração f - f1"
f4 = f.multiplicar(f1)
f4.verifica

puts "Verifica f em Conversão Float"
puts f1.to_f