require 'pry'



class Board
  attr_accessor :plateau
  
  def initialize
    @plateau =[]
    3.times do |x|
      x += 1
      @plateau << BoardCase.new("A#{x}", " ")
    end#fin du do
    3.times do |x|
      x += 1
      @plateau << BoardCase.new("B#{x}", " ")
    end#fin du do
    3.times do |x|
      x += 1
      @plateau << BoardCase.new("C#{x}", " ")
    end#fin du do
  end#fin du initialize
  
  def show_board
    i = 0
    3.times do
      separation
      ligne
      ligne
      ligne_including_symbol(i)
      ligne
      ligne
      i += 1
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

  def ligne_including_symbol(numéro)
    print "|"
    print " "* 16
    print "#{@plateau[0+(numéro*3)].valeur}" #à modifier par la saisie joueur
    print " " * 15
    print "|"
    print " " * 16
    print "#{@plateau[1+(numéro*3)].valeur}" #à modifier par la saisie joueur
    print " " * 15
    print "|"
    print " " * 16
    print "#{@plateau[2+(numéro*3)].valeur}"
    print " " * 15
    puts "|"
  end

  def separation
    puts "-"*100
  end #end of separation 
end#fin de la classe Board


      

