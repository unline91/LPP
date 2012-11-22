require "matriz"
#require "fraccionarios"

describe Matriz do
  	before :each do
		@matriz = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
	end

	it "Se debe poder sumar dos matrices de enteros" do
	   	@aux = Matriz.new([[1,1,1],[1,1,1],[1,1,1]])
	   	(@matriz+ @aux).matriz.should == "[[2, 2, 2], [2, 2, 2], [2, 2, 2]]" #fallo
	end

	#it "Se debe poder sumar dos matrices de numeros racionales" do
		# @aux = Matriz.new([[9,8,7],[6,5,4],[3,2,1]])
		# (@matriz + @aux).matriz.should == [10,10,10],[10,10,10],[10,10,10]
	#end

	#it "Se debe poder multiplicar dos matrices de numeros enteros" do
		# @aux = Matriz.new([[9,8,7],[6,5,4],[3,2,1]])
		#(@matriz * @aux).matriz.should == [10,10,10],[10,10,10],[10,10,10]
	#end

	#it "Se debe poder multiplicar dos matrices de numeros racionales" do
		# @aux = Matriz.new([[9,8,7],[6,5,4],[3,2,1]])
		#(@matriz * @aux).matriz.should == [10,10,10],[10,10,10],[10,10,10]
	#end

end
