def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value="X")
  board[index] = value
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || "O"
    return true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index) == false
      return true
    elsif position_taken?(board, index) == true
      return false
    end
  else
    return nil
  end
end



def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if index.between?(0, 8) == true
    display_board(board)
  else
    turn(board)
  end
end
