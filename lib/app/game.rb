require 'pry'
# require 'application'
require 'app/player'
require 'app/board'
require 'app/show'

class Game

  def initialize
    @player = Player.new
    @board = Board.new
    @show = Show.new
  end

  def create_player
    params = @player.create_player
  end

  def show_grid
    run = @show.show_grid
  end

  def run_game
    board = @board.run_game
  end


end
