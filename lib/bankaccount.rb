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
end
