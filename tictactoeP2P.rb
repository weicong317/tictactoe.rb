# console tictactoe with other player

# to get coordinate in (x,y)
def request_input(turn)
  # to differentiate which player
  if turn === true
    puts "Player 1"
  elsif turn === false
    puts "Player 2"
  end
  puts "=" * 8
  puts "Put in your first coordinate:"
  first_coor = gets.chomp.to_i
  puts "Put in your second coordinate:"
  second_coor = gets.chomp.to_i
  return [first_coor, second_coor]
end

def tic_tac_toe
  board = [["-", "-", "-"],["-", "-", "-"],["-", "-", "-"]]
  turn = true
  count = 0
  
  # keep running unless there is result
  while true
    input_return = request_input(turn)

    first_coor = input_return[0]
    second_coor = input_return[1]

    # error handling to prevent invalid coordinate
    while true
      if first_coor > 2 || second_coor > 2
        puts "hey, it's outta the tic-tac-toe board (value must less than 3)"
        puts "\n"
        input_return = request_input(turn)

        first_coor = input_return[0]
        second_coor = input_return[1]
      else
        break
      end
    end

    # if the box is not taken, take it
    if turn === true && board[first_coor][second_coor] === "-"
      board[first_coor][second_coor] = "X"
      count += 1
      turn = false
    elsif turn === false && board[first_coor][second_coor] === "-"
      board[first_coor][second_coor] = "O"
      count += 1
      turn = true
    end

    puts "\n" * 2
    puts "Here is the output:"
    # print the board again after every move
    board.each {|item| p item}
    puts "\n" * 2

    # depend on result checking, print different thing
    if board[0][0] != "-" && board[0][0] === board[0][1] && board[0][0] === board[0][2]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[1][0] != "-" && board[1][0] === board[1][1] && board[1][0] === board[1][2]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[2][0] != "-" && board[2][0] === board[2][1] && board[2][0] === board[2][2]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[0][0] != "-" && board[0][0] === board[1][0] && board[0][0] === board[2][0]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[0][1] != "-" && board[0][1] === board[1][1] && board[0][1] === board[2][1]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[0][2] != "-" && board[0][2] === board[1][2] && board[0][2] === board[2][2]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[0][0] != "-" && board[0][0] === board[1][1] && board[0][0] === board[2][2]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    elsif board[0][2] != "-" && board[0][2] === board[1][1] && board[0][2] === board[2][0]
      if turn === true
        puts "Player 2 won!"
        break
      elsif turn === false
        puts "Player 1 won!"
        break
      end
    end

    # when tie
    if count === 8
      puts "TIE GAME!"
      break
    end
  end
end

tic_tac_toe