require 'pry'

class RPS

  def makeplayer(name)
    player1 = Player.new(name)
    @player1 = player1.name
  end

  def player1
    @player1
  end

  def makeMove(move)
    @move = move
  end

  def computer_move()
    random_number = rand(1..3)
    if random_number === 1
      @move2 = 'rock'
    elsif random_number === 2
      @move2 = 'scissors'
    else
      @move2 = 'paper'
    end
    @move2
  end

  def wins?()
    if @move || @move2 === 'rock' && move2 || @move === 'scissors'
      true
    elsif @move || @move2 === 'scissors' && @move || move2 === 'paper'
      true
    elsif @move || @move2 === 'paper' && @move || move2 === 'rock'
      true
    else
      false
    end
  end

end

class Player
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

#   def turn()
#     script for get your move and you have 3 options "rock, paper, scissors"
#   end
# end


# puts 'Player1, what is your name?'
# name = gets.chomp
# name = Player1.new(name)
# puts "Hello #{name}!"

# puts 'It is your turn. Rock, paper, or scissors?'
# move = gets
# player1.turn(value1)
# player2.turn(value2)
# win?(value1, value2)
# wins?
# puts '#{name} is the winner. Play again?'
# 