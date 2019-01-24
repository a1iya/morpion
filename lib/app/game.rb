require 'pry'
# require 'application'
require 'app/player'
require 'app/show'
require 'app/board'

class Game

  def initialize
    @player = Player.new
    @board = Board.new

  end

  def create_player
    params = @player.create_player
  end

  def show_game
    board = @board.perform
  end

  def run_game
  

end
