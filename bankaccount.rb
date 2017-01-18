class BankAccount
  attr_accessor :balance, :interest_rate
  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate.to_f
  end

  #deposit method adds amount to balance
  def deposit(amnt)
    @balance += amnt.to_f
  end

  #withdraw method subtracts amount from balance
  def withdraw(amnt)
    @balance -= amnt.to_f
  end

  #interest method increases balance by interest rate
  def gain_interest
    @balance *= @interest_rate.to_f
  end
end

#create new BankAccount object and set values
accnt = BankAccount.new(5000,1.04)

#print accnt values
puts accnt.balance, accnt.interest_rate

#deposit based on use input
puts "How much would you like to deposit?"
accnt.deposit(gets.chomp)

#withdraw based on user input
puts "How much would you like to withdraw?"
accnt.withdraw(gets.chomp)

#allow user to set interest rate and then calculate
puts "What is the interest rate?"
accnt.interest_rate=gets.chomp
accnt.gain_interest

#print accnt values
puts accnt.balance, accnt.interest_rate
