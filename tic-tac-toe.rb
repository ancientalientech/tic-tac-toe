class Board
  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def draw
    puts ' '
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts ' '
  end

  def add_turn(position, item)
    board[position] = item
  end
end

def valid_turn?(board, position)
  return board.board[position] == " " ? true : false
end



def check_victory(board, item)
  victory_condition = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
  victory_condition.each do |line|
    return true if board[line[0]] == item && board[line[1]] == item && board[line[2]] == item
  end
  false
end

def turn(board, item)
  puts "Please enter a number (1-9):"
  pos = gets.chomp.to_i - 1
  board.add_turn(pos, item) if valid_turn?(board, pos)
end

def switch_item(item)
  if item == 'X'
    'O'
  else 
    'X'
  end
end

def play
  puts "Welcome to Tic Tac Toe"
  turn_count = 0;
  item = "X"
  board = Board.new
  board.draw

  while turn_count < 9
    turn board, item
    board.draw
    if check_victory board.board, item
      puts "#{item} wins!"
      return
    end
    item = switch_item item
    turn_count += 1
  end
  puts "It's a tie!"
end

play