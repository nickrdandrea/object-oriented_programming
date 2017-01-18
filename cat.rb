class Cat
  attr_accessor :name, :preferred_food, :meal_time
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  #this is a clever piece of code that I found online
  #divmod divides @meal_time by 12
  #p stores the quotient and l stores the remainder
  #if the remainder is 0 print 12 otherwise print the remainder
  #if the quotient is 0 print am otherwise print pm
  def eats_at
    p, l = @meal_time.divmod(12)
    "#{l.zero? ? 12 : l} #{p.zero? ? "a" : "p"}m"
  end

  #returns string containing class values.
  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}."
  end
end

rocky = Cat.new("Rocky","Tuna",13)
sheriff = Cat.new("Sheriff","Salmon",1)

puts rocky.meow
puts sheriff.meow
