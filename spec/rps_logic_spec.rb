require 'rspec'
require 'rps_logic'
require 'ruby_script'

describe ('#rpslogic') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    game.makeMove('rock')
    game.computer_move()
    expect(game.wins?()).to(eq(true))
  end
  it("returns true if rock is the argument and scissors is the object") do
    game = RPS.new()
    game.makeMove('scissors')
    game.computer_move()
    expect(game.wins?()).to(eq(true))
  end
  it("returns true if scissors and paper are the values") do
    game = RPS.new()
    game.makeMove('scissors')
    game.computer_move()
    expect(game.wins?()).to(eq(true))
  end
  it("returns true if paper and rock are the values") do
    game = RPS.new()
    game.makeMove('paper')
    game.computer_move()
    expect(game.wins?()).to(eq(true))
  end
  it("returns false if values are the same") do
    game = RPS.new()
    game.makeMove('paper')
    game.computer_move()
    expect(game.wins?()).to(eq(true))
  end
  it("creates player1 object") do
    player1 = Player.new('George as a construct')
    expect(player1.name).to(eq("George as a construct"))
  end
  it("creates player1 inside game") do
    game = RPS.new()
    game.makeplayer('George in the game')
    expect(game.player1).to(eq("George in the game"))
  end
  it("creates player1 inside game") do
    game = RPS.new()
    expect(game.makeMove('rock')).to(eq('rock'))
  end
  it("returns the winning player") do
    game = RPS.new()
    player1 = Player.new("tom")
    expect(game.winner?()).to(eq('Player1 is the winner. Play again?'))
  end
end