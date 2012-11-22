class Fraccionario

attr_reader :num, :deno

include Comparable
include Enumerable


#inicializamos el numerador y el denominador
def initialize (num,deno)

	@num = num
	@deno = deno
end

def mostrar_por_pantalla

	"#{@num}/#{@deno}"
end

def mostrar_resultado
	@num.to_f/@deno.to_f
end



#Sobrecarga de operadores
def == (otro)
	if(@num == otro.num) && (@deno == otro.deno)
		true
	else
		false
	end
end

def abs
	if ( @num < 0) && (@deno < 0)
		Fraccionario.new(@num*-1,@deno*-1)
	elsif (@num < 0)
		Fraccionario.new(@num*-1,@deno)
	elsif(@deno < 0)
		Fraccionario.new(@num,@deno*-1)
	else
		Fraccionario.new(@num,@deno)
	end
end

def reciprocal
	Fraccionario.new(@deno,@num)
end

def opuesto
	Fraccionario.new(-@num,@deno)
end

def + (otro)
	Fraccionario.new(otro.deno * @num + otro.num * @deno, @deno*otro.deno)
end

def - (otro)
	Fraccionario.new(otro.deno * @num - otro.num * @deno, @deno*otro.deno)
end

def * (otro)
	Fraccionario.new(otro.num * @num, otro.deno * @deno)
end

def / (otro)
	Fraccionario.new(@num* otro.deno, @deno* otro.num)
end

def % (otro)
	mostrar_resultado % otro.mostrar_resultado
end

def <=> (otro)
	mostrar_resultado <=> otro.mostrar_resultado
end
end
