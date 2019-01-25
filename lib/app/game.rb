require 'pry'
# require 'application'
require 'app/player'
require 'app/board'

class Game
  def initialize
    @players = []
    @board = Board.new
    #@show = Show.new
  end

  def rules
    puts "----------Règles du jeu----------".colorize(:red)
    sleep 1
    puts "Le but du jeu est d'aligner vos 3 symboles : 'X' ou 'O'.".colorize(:red)
    sleep 1
    puts "Pour placer vos symboles sur la grille, tapez l'adresse de la case en utilisant le format suivant : a1, b3, etc."
    sleep 1
    puts "Pour quitter le jeu, tapez q"
  end

  def recruit_players
    puts "Pour jouer vous devez rentrer deux joueurs."
    print "\nBonjour Joueur numéro 1. "
    @players << Player.new('X')
    print "\nBonjour Joueur numéro 2. "
    @players << Player.new('O')
    sleep 2
  end

  def show_grid
    run = @show.show_grid
  end

  def start
    @board.print_grid
    turn = 0
    isfull = @board.isfull
    while !isfull
      ask_player(@players[turn % 2])
      turn += 1
      break if do_we_have_a_winner
      isfull = @board.isfull
    end
    if isfull
      puts "Dommage, personne n'a gagné cette fois-ci."
    end
    puts "La partie est terminée !"      
  end

  def check_validity square_availability
    if square_availability == " "
      true
      else
      puts "Cette case n'est pas libre. Tu as perdu ton tour!"
    end
  end

  def ask_player(pl)
    #print pl.name
    #print @board
    user_choice_hash = {"a1" => @board.a1,
      "a2" => @board.a2,
      "a3" => @board.a3,
      "b1" => @board.b1,
      "b2" => @board.b2,
      "b3" => @board.b3,
      "c1" => @board.c1,
      "c2" => @board.c2,
      "c3" => @board.c3}
    #print user_choice_hash
    
    puts "#{pl.name}, à ton tour :"
    user_choice = gets.chomp.downcase
    user_choice_hash.each do |choice, square|
      if user_choice == choice
        if check_validity(square)
          square.sub!(" ", pl.symbol)
          @board.print_grid
        end
        elsif user_choice == "q" or user_choice == "quit"
          exit
      end
    end
  end

  def do_we_have_a_winner
    aWinner = false
    wins = @board.win_combos
    wins.each do |combos|
      if combos[0] == "O" && combos[1] == "O" && combos[2] == "O"
        puts "Bravo #{@players[1].name}! T'as gagné !"
        aWinner = true
        #exit
        elsif combos[0] == "X" && combos[1] == "X" && combos[2] == "X"
        puts "Bravo #{@players[0].name}! T'as gagné !"
          aWinner = true
          #exit
          #else
          #puts "Tie! Enter q to quit game."
        end #fin du if
      end #fin du each
    return aWinner
  end
end