require_relative 'tile'

class Board

  def initialize()
    @grid = Array.new(9){ Array.new(9)}
  end

  def populate
    values = Array.new(71) { Tile.new(nil, self) }
    bombs = Array.new(10) { Tile.new("B", self) }
    values.concat(bombs).shuffle!

    @grid.each_with_index do |row, row_idx|
      row.each_with_index do |col, col_idx|
        @grid[row_idx][col_idx] = values.pop
      end
    end
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end



end

# board.reveal(pos)
# b = Board.new()
# p b.populate.length
# def reveal(pos)
#   self[pos].reveal
# end
