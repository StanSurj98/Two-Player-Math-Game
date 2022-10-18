require './Question'
require './Player'
class Turn
  attr_reader :question, :answer, :current_player, :prompt
  def initialize(player)
    @question = Question.new
    @answer = @question.answer
    @current_player = player
  end
  
  def start_turn
    puts "#{current_player.name}: #{question.question}"
  end

  def player_answer  
    print "> "
    player_answer = gets.chomp.to_i
    if player_answer == answer
      puts "Yes! You are correct!"
    else
 
      current_player.subtract_life
      puts "#{current_player.name} current lives #{current_player.current_lives}/3" # sanity
    end
  end
end
