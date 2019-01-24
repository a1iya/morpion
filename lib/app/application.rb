require 'app/game'
require 'pry'
require 'colorize'

class Application

  def initialize
    @game = Game.new
  end

  def perform
    puts "----------BIENVENUE DANS LE BIG MORPION----------".colorize(:red)
    puts "                      \\|/      ".colorize(:red)
    puts "                     (o o)     ".colorize(:red)
    puts "  ---------------ooO--(_)--Ooo---------------".colorize(:red)
    while true
        sleep 2
      # Affichage du menu
      puts "Tu veux faire quoi ?"
      sleep 1.5
      puts "1. Je veux jouer".colorize(:green)
      puts "2. J'ai pas le temps, je veux quitter"
      params = gets.chomp.to_i

      case params
        when 1
          puts "Et c'est parti pour notre partie !"
          sleep 2
          @game.create_player
          # @game.show_grid
          @game.run_game
        when 2
          puts "Pas de souci, à bientôt"
          break
        else
          puts "J'ai pas compris"
        end
      end
    end


end
