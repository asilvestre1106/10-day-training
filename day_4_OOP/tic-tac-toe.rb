class Board
  attr_accessor :board
  def initialize
    @board = [
        [1,2,3],
        [4,5,6],
        [7,8,9]
      ]
  end

  def display
    @board.each do |row|
      puts "#{row[0]} | #{row[1]} | #{row[2]}"
      puts "---------"
    end
    puts " "
  end

  def taken?(row, col)
    @board[row][col] == "X" || @board[row][col] == "O"
  end

  def mark_cell(row, col, mark)
    if taken?(row, col)
      puts "Position is taken"
    else
      @board[row][col] = mark
    end
  end

  def place_mark(position, mark)
    if position < 1 || position > 9
      puts "Invalid"
    else
      row = (position - 1) / 3
      col = (position - 1) % 3

      mark_cell(row, col, mark)
    end
  end
end

#FOR TESTING
board = Board.new
board.display

board.place_mark(1, "X")
board.display
board.place_mark(1, "O")
board.display
board.place_mark(3, "X")
board.display
board.place_mark(3, "O")
board.display