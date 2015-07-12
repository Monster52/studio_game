class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health)
    @name = name.capitalize
    @health = health
  end

  def woot
    @health += 5
    puts "#{@name} got wooted!"
  end

  def blam
    @health -= 5
    puts "#{@name} got blammed!"
  end
  
  def name=(new_name) #allows capitalize from attr write
    @name = new_name.capitalize
  end

  def score
    @health + @name.length
  end

  def stats
    "#{@name} has a health of #{@health} and a score of #{score}"
  end
end

player1 = Player.new("larry", 90)
player2 = Player.new("currly", 80)
player3 = Player.new("moe", 100)
player4 = Player.new("shemp", 80)

players = [player1, player2, player3, player4]
puts "There are #{players.size} players in the game"

players.each do |p|
  p.blam
  p.woot
  p.woot
  puts p.stats
end
