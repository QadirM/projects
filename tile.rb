
class Tile

  def initialize(value, board)

    @value = value
    @face = false
  end

  def bomb?
    value == "B"
  end

  def revealed?
    @face
  end

  def neighbors

  end

  def reveal
    puts "it works"
  end

  def neighbors_bomb_count

  end

  def get_board(board)
    @board = board
  end

end
