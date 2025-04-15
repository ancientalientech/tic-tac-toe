class Board
  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def draw
    puts " #{self.board[0]} | #{self.board[1]} | #{self.board[2]} "
    puts "-----------"
    puts " #{self.board[0]} | #{self.board[1]} | #{self.board[2]} "
    puts "-----------"
    puts " #{self.board[0]} | #{self.board[1]} | #{self.board[2]} "
  end
end

b = Board.new

b.draw