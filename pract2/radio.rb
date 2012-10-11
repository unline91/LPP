class Radio

  def initialize (num)
 	@@perimetro = num
 	@pi = 3.14
 	puts "el perimetro introducido es :   #{@@perimetro}"
  end
   
  def calculo()
 	@@numero = (@@perimetro/(2*@pi))
 	puts "El radio es :  #{@@numero}"
  end

end

#main

perimetro = ARGV[0].to_r
if perimetro == 0
   perimetro = 75.36 #variable por defecto
end
calc = Radio.new(perimetro)
calc.calculo
