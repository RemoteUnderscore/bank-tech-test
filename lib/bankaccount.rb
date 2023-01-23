class BankAccount
  def initialize
    @balance = []
  end

  def statement
    return @balance.sum
  end

  def deposit(amount)
    @balance << amount
  end

  def withdraw(spend)
    fail 'You cannot withdraw more than you have in your account!' unless @balance.sum >= spend
    @balance.sum - spend
    
  end
end
