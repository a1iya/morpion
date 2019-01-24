require 'pry'
# require 'application'
require 'app/player'

class Game

  def initialize
    @player = Player.new
  end

  def create_player
    params = @player.create_player
  end 
end
