require 'bankaccount'

RSpec.describe 'bankaccount' do
  context 'on initialization' do
    it 'is initially empty' do
      account = BankAccount.new
      expect(account.statement).to eq(0)
    end
  end

  context 'when you deposit 1000 cash' do
    it 'returns 1000' do
      account = BankAccount.new
      account.deposit(1000)
      expect(account.statement).to eq(1000)
    end
  end
end
