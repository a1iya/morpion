require 'pry'

class Player
    attr_reader :name, :symbol
    #attr_writer :player_1 , :player_2
    
    
    
    def initialize(symbol)
        @symbol = symbol
        
        puts "Quel est ton nom ?"
        print ">"
        @name = gets.chomp
        print "> Tu joueras avec #{@symbol}\n"
        
    end
end
