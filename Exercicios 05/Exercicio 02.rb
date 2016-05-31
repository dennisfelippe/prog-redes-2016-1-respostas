#Cria Gerador
class Udp
	attr_accessor :data

	def initialize(srcport,dstport,data)
	@s_port = srcport
	@d_port = dstport
	@checksum = 0
	@data = data.unpack("B*")
	@length = 64+@data[0].size
	end

	def out
	out_s_port="%016b" % @s_port
	out_d_port="%016b" % @d_port
	out_length="%016b" % @length
	out_checksum="%016b" % @checksum
	datagram = out_s_port+out_d_port+out_length+@data[0]+out_checksum
	check = 0
	@out = []
		while check < @length do
		@out << datagram[check..(check+31)]
		check += 32
		end
	return @out
	end

end


#Testando
teste = Udp.new(50123, 1029, "DATA TESTE")
puts teste.out