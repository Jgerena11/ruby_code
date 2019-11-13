class Player
  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end
  def to_s
    "I'm #{@name} with a health of #{@health}"
  end
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  def w00t
    @health += 15
    puts "#{@name} got w00ted"
  end
end

player1 = Player.new("moe", 100)
#puts player1.object_id
#puts player1.inspect
#puts player1.say_hello
player2 = Player.new("Curly", 125)
player3 = Player.new("Larry", 60)

player2.blam
puts player2
player2.w00t
puts player2
