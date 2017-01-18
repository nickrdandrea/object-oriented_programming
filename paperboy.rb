class Paperboy
  attr_accessor :name, :experience
  #earnings is a read-only attribute
  attr_reader :earnings
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  #calculate quota based on experience
  def quota
    50 + @experience/2
  end

  #calculate earnings based on numbe rof houses delivered
  def deliver(start_address, end_address)
    #get the quota for the delivery
    goal = quota
    #haven't attempted stretch assignment yet
    deliveries = end_address - start_address
    #log deliveries as experience
    @experience += deliveries
    #if deliveries reached quota then calculate earnings
    if deliveries >= goal
      @earnings += (deliveries-goal)*0.50
      @earnings += goal*0.25
    #if deliveries didn't reach quote calculate earnings and deduct $2
    else
      @earnings += deliveries*0.25
      @earnings -= 2
    end
  end

  #return a string with class values
  def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end

nick = Paperboy.new("nick")
puts nick.report

nick.deliver(100,150)
puts nick.report

nick.deliver(152, 179)
puts nick.report
