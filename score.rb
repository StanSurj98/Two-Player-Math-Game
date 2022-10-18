def check_lives(players)
  if players[0].current_lives == 0
    players.delete_at(0)
    game_over(players)
  elsif
    players[1].current_lives == 0
    players.delete_at(1)
    game_over(players)
  else
    puts "P1: #{players[0].current_lives} vs P2: #{players[1].current_lives}"
  end
end

def game_over(players)
  puts "#{players[0].name} wins with a score of #{players[0].current_lives}/3"
  puts "----- GAME OVER -----"
  abort "Good Bye!"
end
