require_relative 'player'
require_relative 'game'

player1 = Player.new("larry", 90)
player2 = Player.new("currly", 80)
player3 = Player.new("moe", 100)
player4 = Player.new("shemp", 80)

game = Game.new("Romads")
game.add_player(player1)
game.add_player(player2)
game.add_player(player3)
game.add_player(player4)
game.play
