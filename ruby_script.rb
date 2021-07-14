#!/usr/bin/env ruby
require './lib/rps_logic.rb'

puts 'What is your name?'
name = gets.chomp
puts "Hello #{name}"

game = RPS.new()
player1 = Player.new(name)

puts "Let's play Rock, Paper, Scissors! Do you want to choose rock, paper, or scissors?"
move = gets.chomp
game.makeMove(move)
game.computer_move()
puts "#{game.wins?()}"
