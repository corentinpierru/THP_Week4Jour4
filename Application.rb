require 'bundler'
Bundler.require
require_relative 'lib/Game.rb'

class Application
  def perform
    game = Game.new
    counter_tour = 0
    while game.victory? == false
      if counter_tour == 9
        break
      end
      counter_tour += 1
      game.play_turn
    end #end of while
      if counter_tour == 9
        puts "c'est un match nul !"
      else 
        puts "Bravo tu as gagné !"
      end 
    game.board.show_board
  end #end of perform method
end #end of Application class

 Application.new.perform
puts "end of the file"
