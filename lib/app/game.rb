require 'pry'
# require 'application'
require 'app/player'
require 'app/board'
require 'app/show'

class Game
    
    def initialize
        @players = []
        @board = Board.new
        #@show = Show.new
    end
    
    def rules
        sleep 1
        puts "---------- Règles du jeu ----------".colorize(:red)
        sleep 1
        puts "Le but du jeu est d'aligner vos 3 symboles : 'X' ou 'O'.".colorize(:red)
        sleep 1
        puts "Pour placer vos symboles sur la grille, tapez l'adresse de la case en utilisant le format suivant : a1, b3, etc."
        sleep 1
        puts "Pour quitter le jeu, tapez q"
    end
    
    def recruit_players
        puts "Pour jouer vous devez rentrer deux joueurs."
        print "Bonjour Joueur numéro 1. "
        @players << Player.new('X')
        sleep 1
        print "Bonjour Joueur numéro 2. "
        @players << Player.new('O')
        #print @players
        #params = @player.create_player
    end
    
    def show_grid
        run = @show.show_grid
    end
    
    def start
        @board.print_grid
        #board = @board.run_game
        turn = 0
        while true
            ask_player(@players[turn % 2])
            turn += 1
            @board.check_for_winner
        end
        
        
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
        
    end
end
