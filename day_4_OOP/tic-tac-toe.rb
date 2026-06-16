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

  def winning_lines
  [
    [@board[0][0], @board[0][1], @board[0][2]],
    [@board[1][0], @board[1][1], @board[1][2]],
    [@board[2][0], @board[2][1], @board[2][2]],

    [@board[0][0], @board[1][0], @board[2][0]],
    [@board[0][1], @board[1][1], @board[2][1]],
    [@board[0][2], @board[1][2], @board[2][2]],

    [@board[0][0], @board[1][1], @board[2][2]],
    [@board[0][2], @board[1][1], @board[2][0]]
  ]
  end

  def winner?(mark)
  winning_lines.any? do |line|
    line.all? { |cell| cell == mark }
  end

end
  
end

class Player
  attr_accessor :name
  attr_accessor :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end

end

class Game
  attr_accessor :board
  attr_accessor :player1
  attr_accessor :player2
  attr_accessor :current_player

  def initialize
    @board = Board.new
    @player1 = Player.new("Andre", "X")
    @player2 = Player.new("Ced", "O")
    @current_player = @player1
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def start
    while true
      @board.display

      puts "#{@current_player.name}'s Turn"
      puts "Mark: #{@current_player.mark}"
      
      print "Choose position: "
      position = gets.chomp.to_i
      @board.place_mark(position, @current_player.mark)
      
      if @board.winner?(@current_player.mark)
        @board.display
        puts "#{@current_player.name} wins!"
        break
      end
      switch_player
    end
  end

end

game = Game.new
game.start
