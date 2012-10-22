require 'RockPaperScissors'
require 'test/unit'

class TestRockPaperScissors < Test::Unit::TestCase
	def setup
		#def test variable
	end

	def teardown
		#nothing to do
	end

	def test_wrong_play
		assert_raise (SyntaxError){RockPaperScissors.play('Fuego')}
	end

	def correct_answer(x)
		return true if x =~ /Empate/
		return true if x =~ /Gana maquina: (\w+) defeats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
		return true if x =~ /Gana jugador: (\w+) beats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym

	end
	
	def test_play_1
		30.times do
			assert correct_answer(RockPaperScissors.play('tijeras'))		end
	end

	def test_play_2
		30.times do
			assert correct_answer(RockPaperScissors.play('papel'))
		end
	end

	def test_play_3
		30.times do
			assert correct_answer(RockPaperScissors.play('piedra'))
		end
	end
	
end
