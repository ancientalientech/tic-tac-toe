class Board
  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def draw
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def add_turn(position, item)
    board[position] = item
  end
end

def valid_turn?(board, position)
  return board.board[position] == " " ? true : false
end

def turn(board, item)
  puts "Please enter a number (1-9):"
  pos = gets.chomp.to_i - 1
  board.add_turn(pos, item) if valid_turn?(board, pos)
end

def play
  puts "Welcome to Tic Tac Toe"
  turn_count = 0;
  item = "X"
  board = Board.new
  board.draw
end