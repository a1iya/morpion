require 'pry'


class Show

  def new_board
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

  #then, I defined the squares method to turn the empty squares into an array
  def squares
    [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]

  end

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


  #the print_grid method draws a picture of the grid that holds the empty spaces from the squares array.
  def print_grid
    puts
    puts "   1   2   3"
    puts "A  #{@a1} | #{@a2} | #{@a3} "
    puts "  ---|---|---"
    puts "B  #{@b1} | #{@b2} | #{@b3} "
    puts "  ---|---|---"
    puts "C  #{@c1} | #{@c2} | #{@c3} "
    puts
    check_for_winner
  end


  def check_for_winner
    win_combos.each do |combos|
      if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
        puts "Computer wins! Good luck next time."
        exit
      elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
        puts "You win! Good job!"
        exit
      end
    end
  end

    def show_grid
      new_board
      squares
      win_combos
      print_grid
      check_for_winner
    end


end
