require 'pry'

class Player
attr_reader :name, :symbol
    
  def initialize(symbol)
    @symbol = symbol
    
    puts "Quel est ton nom ?"
    print ">"
    @name = gets.chomp
    print "> Tu joueras avec #{@symbol}\n"
  end
end
