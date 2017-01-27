require_relative 'board'

class Game

  def initialize()
    @board = Board.new
    @board.populate
  end

  def testing
    pos = [0,0]
    puts @board[pos].reveal
  end

end

bb = Game.new
bb.testing
