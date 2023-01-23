require 'bankaccount'

RSpec.describe 'bankaccount' do
  context 'on initialization' do
    it 'is initially empty' do
      account = BankAccount.new
      expect(account.statement).to eq(0)
    end
  end

  context 'when you deposit 1000' do
    it 'returns 1000' do
      account = BankAccount.new
      account.deposit(1000)
      expect(account.statement).to eq(1000)
    end
  end
  
  context 'when you deposit two separate amounts of 1000 and 2000' do
    it 'returns 3000' do
      account = BankAccount.new
      account.deposit(1000)
      account.deposit(2000)
      expect(account.statement).to eq(3000)
    end
  end

  context 'when you deposit 1000 and withdraw 500' do
    it 'returns 500' do
      account = BankAccount.new
        account.deposit(1000)
        account.withdraw(500)
        expect(account.statement).to eq(500)
    end
  end

  context 'if you have less than zero in your account' do
    it 'will return a warning' do
      account = BankAccount.new
        account.withdraw(500)
        expect(account.statement).to eq('You are overdrawn')
    end
  end
end
