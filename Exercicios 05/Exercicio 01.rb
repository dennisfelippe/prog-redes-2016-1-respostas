arquivo = "teste.bmp"
f1 = File.open(arquivo, "r")
header = [66, 77] # Já Convertido em Decimal
data = []
begin
	ok = true
	for i in 0..1 do 
		byte = f1.read(1).unpack("C")[0]
		if header[i] != byte
			ok = false
			break
		end
	end
ensure
	f1.close
end

if ok
	puts "o arquivo #{arquivo} é um bmp"
else
	puts "o arquivo #{arquivo} não é um bmp"
end