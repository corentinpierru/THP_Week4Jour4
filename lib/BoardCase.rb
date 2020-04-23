require 'pry'

class BoardCase
  attr_accessor :valeur, :coordonee 

  def initialize(coordo, contenue)
    @valeur = contenue
    @coordonee = coordo
  end #end of initialize
end #end of class