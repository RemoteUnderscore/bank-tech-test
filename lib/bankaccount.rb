class BankAccount
  def initialize
    @balance = 0
  end

  def deposit(save)
    @balance += save
  end

  def withdraw(spend)
    @balance -= spend
  end

  def statement
    return @balance
  end
end
