require 'pry'

class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3
    
  def initialize
    @a1 = " "
    @a2 = " "
    @a3 = " "
    @b1 = " "
    @b2 = " "
    @b3 = " "
    @c1 = " "
    @c2 = " "
    @c3 = " "
  end
    
    #on a défini la méthode pour mettre les cases dans un tableau
    #  [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
    #end
    
  def win_combos
    [[@a1, @a2, @a3],
    [@a1, @b2, @c3],
    [@a1, @b1, @c1],
    [@b1, @b2, @b3],
    [@c1, @c2, @c3],
    [@c1, @b2, @a3],
    [@a2, @b2, @c2],
    [@a3, @b3, @c3]]    
  end
  
  def print_grid
    puts
    puts "   1   2   3"
    puts "A  #{@a1} | #{@a2} | #{@a3} "
    puts "  ---|---|---"
    puts "B  #{@b1} | #{@b2} | #{@b3} "
    puts "  ---|---|---"
    puts "C  #{@c1} | #{@c2} | #{@c3} "
    # puts
      # check_for_winner
  end
  
  def isfull
    full = true
    [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3].each do | cell |
      #puts '<'+cell + '>'
      if cell == ' '
        full = false
        break
      end
    end
    return full
  end
end
