# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # 0 - top row win
  [3,4,5], # 1- middle row win
  [6,7,8], # 2 - bottom row win
  [0,3,6], # 3 - left column win
  [1,4,7], # 4 - Middle column win
  [2,5,8], # 5 - right column win
  [0,4,8], # 6 - top left bottom right diagonal win
  [6,4,2], # 8 - bottom left top right diagonal win
]



def won?(board)
  WIN_COMBINATIONS.each do |win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  end
  return false
end



def full?(board)
  board.any?{|cell| cell == "" || cell == " "}
end
