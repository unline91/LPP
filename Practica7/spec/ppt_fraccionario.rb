require "fraccionario"

describe Fraccionario do
	before :each do
		@numero = Fraccionario.new(4,5)
	end

	it "Debe estar en su forma reducida" do
		@nuevo = Fraccionario.new(20,2)
		@nuevo.mostrar_por_pantalla.should == "20/2"
	end

	it "Debe existir un numerador" do
		@numero.num.is_a?(Numeric).should == true
	end

	it "Debe existir un denominador" do
		@numero.deno.is_a?(Numeric).should == true
	end

	it "Se debe invocar al metodo num() para obtener el numerador" do
		@numero.num.should == 4
	end

	it "Se debe invocar al metodo den() para obtener el denominador" do
		@numero.deno.should == 5
	end

	it "Se debe mostrar por la consola la fraccion de la forma : a/b, donde a es el numerador y b el denominador" do
		@numero.mostrar_por_pantalla.should == "4/5"
	end

	it "Se debe mostrar por la consola la fraccion en formato flotante" do
		@numero.mostrar_resultado.should == 0.8
	end
	it " Se debe comparar si dos fracciones son iguales con == " do
		@numero == Fraccionario.new(4,5)
	end

	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@nuevo = Fraccionario.new(4,5)
		@nuevo = @nuevo.abs
		@nuevo.mostrar_por_pantalla.should == "4/5"
	end

	it " Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@numero.reciprocal.mostrar_por_pantalla.should == "5/4"
	end

	it " Se debe calcular el opuesto de una fraccion con -" do
		@numero.opuesto.mostrar_por_pantalla.should == "-4/5"
	end

	it " Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
		(@numero + Fraccionario.new(6,3)).mostrar_por_pantalla.should == "42/15"
	end

	it " Se debe restar dos fracciones con - y dar el resultado de forma reducida"do
		(@numero - Fraccionario.new(6,3)).mostrar_por_pantalla.should == "-18/15"
	end

	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida"do
		(@numero * Fraccionario.new(6,3)).mostrar_por_pantalla.should == "24/15"
	end

	it " Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
		(@numero / Fraccionario.new(6,3)).mostrar_por_pantalla.should == "12/30"
	end

	it "Se debe calcular el modulo de dos fracciones con % y dar el resultado de forma reducida" do
		(@numero % (Fraccionario.new(4,5))).should == 0
	end

	it " Se debe de poder comprobar si una fracion es menor que otra" do
		(@numero < (Fraccionario.new(5,5))).should == true
	end

	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		(@numero > (Fraccionario.new(3,5))).should == true
	end

	it " Se debe de poder comprobar si una fracion es menor o igual que otra" do
		(@numero <= (Fraccionario.new(4,5))).should == true
	end

	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		(@numero >= (Fraccionario.new(4,5))).should == true
	end
end
