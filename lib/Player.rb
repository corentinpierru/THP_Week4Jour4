require 'pry'

class Player
  attr_reader :name, :symbol_player

  def initialize(name, symbol)
    @name = name
    @symbol_player = symbol
  end#end of initialize method
end#end of Player class