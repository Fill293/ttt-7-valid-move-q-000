# code your #valid_move? method here
def valid_move?(board, position)
  p = position.to_i - 1
  if position_taken?(board, p) == false && p.between?(0, 8)
      return true
    elsif position_taken?(board, p) == true
      return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  elsif board[position] == "X" || "O"
    true
  end
end
