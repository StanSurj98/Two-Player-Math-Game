class Player
  def initialize(name)
    @name = name
    @current_lives = 3
  end

  attr_reader :current_lives, :name

  def subtract_life
    @current_lives -= 1
  end

end