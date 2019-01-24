require 'pry'
# require 'application'
require 'app/player'
require 'app/show'
require 'app/board'

class Game

  def initialize
    @player = Player.new
    @board = Show.new

  end

  def create_player
    params = @player.create_player
  end

  def show_game

    box = @board.show_game
  end
end
