require 'pry'

class Show

  #def method to check if user's choice of move is valid/available. this should be called only after the player has had 3 turns but I don't know how to do that.
  def check_validity square_availability
    if square_availability == " "
      true
    else
      puts "That space is taken. Get your own!"
    end
  end

  def player_1
    user_choice_hash = {"a1" => @a1,
                        "a2" => @a2,
                        "a3" => @a3,
                        "b1" => @b1,
                        "b2" => @b2,
                        "b3" => @b3,
                        "c1" => @c1,
                        "c2" => @c2,
                        "c3" => @c3}


    puts "Please choose a square:"
    user_choice = gets.chomp.downcase
    user_choice_hash.each do |choice, square|
      if user_choice == choice
        if check_validity(square)
          square.sub!(" ", "X")
          print_grid
        end
      elsif user_choice == "q" or user_choice == "quit"
        exit
      end
    end
    #check_for_winner
  end

  def player_2
    user_choice_hash = {"a1" => @a1,
                        "a2" => @a2,
                        "a3" => @a3,
                        "b1" => @b1,
                        "b2" => @b2,
                        "b3" => @b3,
                        "c1" => @c1,
                        "c2" => @c2,
                        "c3" => @c3}


    puts "Please choose a square:"
    user_choice = gets.chomp.downcase
    user_choice_hash.each do |choice, square|
      if user_choice == choice
        if check_validity(square)
          square.sub!(" ", "O")
          print_grid
        end
      elsif user_choice == "q" or user_choice == "quit"
        exit
      end
    end
    # squares.shuffle.each do |square|
    #   if check_validity(square)
    #     square.gsub!(" ", "O")
    #     break
    #   end
    # end
    # #check_for_winner
  end

  def check_for_winner
    win_combos.each do |combos|
      if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
        puts "Computer wins! Good luck next time."
        exit
      elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
        puts "You win! Good job!"
        exit
      #else
        #puts "Tie! Enter q to quit game."
      end
    end
  end

  def start_game
    puts "Welcome to my Tic Tac Toe game!"
    puts "To place your X on the grid, enter the location (ex--a1, b3)."
    puts "To quit, enter q at any time"
  end

  def run_game
    start_game
    new_board
    while true
      print_grid
      player_1
      player_2
    end
  end



end
