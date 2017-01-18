class Player
  attr_accessor :gold_coins, :health_points, :lives, :score
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
    @score = 0
  end

  def restart
    initialize
    #this is for testing
    puts "You died."
  end

  #lose 1 @health_points if @health_points is less than 10 lose a life
  #run restart if @lives reach 0
  def do_battle
    @health_points -= 1
    if @health_points <= 0
      @lives -= 1
      @health_points = 10
    end
    restart if @lives <= 0
  end

  #increase @lives by 1
  def level_up
    @lives += 1
  end

  #increase @gold_coins by treasure
  #if @gold_coins is greater than 10 increase score and reset coins
  #if score is greater than 10 increase @lives and reset score
  #doesn't handle overflow i.e treasure = 12 and two coins are lost
  #may resolve in future
  def collect_treasure(treasure)
    @gold_coins += treasure
    if @gold_coins >= 10
      @score += 1
      @gold_coins = 0
    end
    if @score >= 10
      level_up
      @score = 0
    end
  end
end

nick = Player.new
puts "Gold: #{nick.gold_coins}", "Health: #{nick.health_points}", "Lives: #{nick.lives}", "Score: #{nick.score}"

#test do_battle
62.times do
  nick.do_battle
end
puts "Health After Battle: #{nick.health_points}", "Lives After Battle: #{nick.lives}"

#test level_up
nick.level_up
puts "Lives After Level Up: #{nick.lives}"

#test collect_treasure
133.times do
  nick.collect_treasure(1)
end
puts "Gold After Treasure: #{nick.gold_coins}", "Score After Treasure: #{nick.score}", "Lives After Treasure: #{nick.lives}"
