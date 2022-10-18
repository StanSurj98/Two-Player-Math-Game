require './Player'
require './Question'
require './Turn'
require './score'
require './alternate_players'


#create 2 players
player1 = Player.new('Player1')
player2 = Player.new('Player2')
#store in players array
players_array = [player1, player2]

index = 0

until player1.current_lives == 0 || player2.current_lives == 0 do
  turn = Turn.new(players_array[index])
  puts turn.start_turn
  puts turn.player_answer
  check_lives(players_array)
  index = alternate_players(index)
  puts "----- NEW TURN -----"
end