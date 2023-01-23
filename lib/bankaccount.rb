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
    if @balance < 0
      return 'You are overdrawn'
    else
      return @balance
    end
  end

end
