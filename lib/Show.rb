require 'pry'

class Show
  def show_board
    i = 1
    3.times do
      i+=1
      separation
      ligne
      ligne
      ligne_including_symbol(i)
      ligne
      ligne
    end
    separation
  end #end of show_board

  def ligne
    print "|"
    print " " * 32
    print "|"
    print " " * 32
    print "|"
    print " " * 32
    puts "|"
  end #end of ligne
  def ligne_including_symbol(lettre)
    print "|"
    print " "* 16
    print "#{@game.board.plateau[0].valeur}" #à modifier par la saisie joueur
    print " " * 15
    print "|"
    print " " * 16
    print "0" #à modifier par la saisie joueur
    print " " * 15
    print "|"
    print " " * 16
    print "X"
    print " " * 15
    puts "|"
  end
  def separation
    puts "-"*100
  end #end of separation
end #end of Show class
