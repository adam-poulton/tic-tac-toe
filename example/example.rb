require_relative "../lib/tic_tac_toe.rb"

puts "Welcome to tic tac toe"
puts ""
puts "Enter player 1: "
p1 = TicTacToe::Player.new({color: "X", name: gets.chomp})
puts "Enter player 2: "
p2 = TicTacToe::Player.new({color: "O", name: gets.chomp})
players = [p1, p2]
TicTacToe::Game.new(players).play
