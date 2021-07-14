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
    if (@move === 'rock' || @move2 === 'rock') && (@move2 === 'scissors'|| @move === 'scissors')
      true
      winner?()
    elsif (@move === 'scissors' || @move2 === 'scissors') && (@move === 'paper'|| @move2 === 'paper')
      true
      winner?()
    elsif (@move === 'paper' || @move2 === 'paper') && (@move === 'rock' || @move2 === 'rock')
      true
      winner?()
    else
      false
    end
  end

  def winner?()
    if (@move === 'rock' && @move2 === 'scissors') || (@move === 'scissors' && @move2 === 'paper') || (@move === 'paper' && @move2 === 'rock')
      return 'Player1 is the winner. Play again?'
    else (@move2 === 'rock' && @move === 'scissors') || (@move2 === 'scissors' && @move === 'paper') || (@move2 === 'paper' && @move1 === 'rock')
      return 'Computer wins. Play again?'
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


    # wins_value = false
    # until wins_value === true do
    #   makeMove(move)
    #   computer_move()
    #   wins_value = wins?()
    # end