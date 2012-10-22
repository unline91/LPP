class RockPaperScissors

	@@defeat = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
	@@throws = @@defeat.keys

	class << self

      	def play(player_throw)

		player_throw = player_throw.to_sym
		
		#raise SyntaxError, "Expected one of the following '#{@@throws.join(',')}'" unless @@throws.include? player_throw

		computer_throw = @@throws.sample

		if player_throw == computer_throw
 			 puts "Empate"
		elsif player_throw == @@defeat[computer_throw]
  			"Gana Maquina: #{computer_throw} defeats #{player_throw}"
  		else
    			"Gana Juador: #{player_throw} beats #{computer_throw}"
		end
	end
        end
end
