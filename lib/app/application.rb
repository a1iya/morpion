require 'app/game'
require 'pry'
require 'colorize'

class Application
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
    print ">"
    params = gets.chomp.to_i
    
    case params
      when 1
        @game = Game.new
        @game.rules
        @game.recruit_players
        @game.start
        # @game.show_grid
        #@game.run_game(player1)
        when 2
        puts "Pas de souci, à bientôt"
        break
        else
        puts "J'ai pas compris"
      end
    end
  end
end