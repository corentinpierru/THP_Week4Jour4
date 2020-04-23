require 'pry'
require_relative 'Player.rb'
require_relative 'BoardCase.rb'
require_relative 'Board.rb'
require_relative 'Show.rb'

class Game
  attr_accessor :current_player, :status, :board, :array_of_player
  
  def initialize 
    @status = "on going"
    @board = Board.new
    @array_of_player = []
    player1 = Player.new("joueur1", "X")
    player2 = Player.new("joueur2", "0")
    @array_of_player = [player1, player2]
    @current_player = player1
  end #end of initialize

  def play_turn
    if @current_player == @array_of_player[0]
      @current_player = @array_of_player[1]
    else 
      @current_player = @array_of_player[0]
    end #end of if
    puts "#{@current_player.name} c'est à toi de jouer"
    puts "choisis la case dans laquelle tu veux jouer, voici le tableau (le tableau est assez grand, agrandis ton terminal si besoin) :"
    puts "les lettres sont les index des lignes et les numéros sont les indexs des colonnes"
    puts "si tu fais une erreur (tu joues une case déjà joué ou une case qui n'existe pas), tu perds ton tour,"
    puts @board.show_board
    puts "Tu veux jouer dans quelle case ?"
    print ">"
    user_choice = gets.chomp
    @board.plateau.each do |handle|
      if handle.valeur == " " && handle.coordonee == user_choice
        if user_choice == "A1" || user_choice == "A2" || user_choice == "A3" || user_choice == "B1" || user_choice == "B2" || user_choice == "B3" || user_choice == "C1" || user_choice == "C2" || user_choice == "C3" #4
          @board.plateau.each do |i|
              if user_choice == i.coordonee
                i.valeur = @current_player.symbol_player
              end #end of if good
          end #end of do plateau.each good    
        end #end of second if
      end #end of do each
    end       
  end #end of play turn

  def victory?
    wins = [[0,1,2], [3,4,5], [6,7,8], [0, 3, 6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    i = 0
    wins.any? do |subarray|
      subarray.all? do |value|
         @board.plateau[value].valeur == "X"
         @board.plateau[value].valeur == "0"
      end
    end
  end#end of class victory
end #end of class Game
