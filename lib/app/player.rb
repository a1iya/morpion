require 'pry'

class Player
  attr_writer :player_1 , :player_2

  def create_player
    puts "Pour jouer vous devez rentrer deux joueurs."

    puts "Qui est le/la premier(ière) joueur(euse) ?"
    print ">"
    @player_1 = gets.chomp
    print "> Tu joueras avec X\n"

    puts "Qui le/la 2ème joueur(euse) ?"
    print ">"
    @player_2 = gets.chomp
    print "> Tu joueras avec O\n"
  end
end
