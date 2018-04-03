def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif !index.between?(0,8)
    return false
  end

  return true
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  flag = [" ","", nil]
  if flag.include? board[index]
    return false
  end
  return true
end

# code your input_to_index and move method here!
def input_to_index(input)

  begin
    n = Integer(input)
  rescue ArgumentError
    return -1
  end

  if input.to_i == 0
    return "0".to_i
  end


  return input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
  display_board(board)
  return board
end

board = Array.new(9, " ")
display_board(board)
input = gets.strip
converted_input = input_to_index(input)

if valid_move?(converted_input)
  move(board, converted_input)
else
  while !valid_move?
