require_relative 'player'

class Game
  attr_reader = :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(name)
    @players << name
  end

  def play
    puts "There are #{@players.length} players in #{@title}"
    @players.each do |player|
      puts player.stats
      player.woot
      player.blam
      player.blam
      player.blam
      puts player.stats
    end
  end
end









