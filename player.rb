class Player
  attr_reader :health
  attr_accessor :name

  def initialize(name, health=100)
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

if __FILE__ == 0
  player = Player.new("moe")
  puts player.name
  puts player.health
  player.woot
  puts player.health
  puts player.blam
  puts player.health
end
