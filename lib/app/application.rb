require 'app/game'
require 'pry'

class Application

  def initialize
    @game = Game.new
  end

  def perform
    puts "BIENVENUE DANS LE BIG MORPION"
    while true

      # Affichage du menu
      puts "Tu veux faire quoi vieux ?"
      puts "1. Je veux démarrer un partie"
      puts "2. J'ai pas le temps, je veux quitter"
      params = gets.chomp.to_i

      case params
        when 1
          puts "Ok on démarre la partie soi-vif/ve"
          puts "Rentrer vos blaze svp ?"
          @game.create_player
          @game.show_game
          @game.run_game

        when 2
          puts "Pas de souci à bientôt"
          break
        else
          puts "J'ai pas compris"
        end
      end
    end


end
