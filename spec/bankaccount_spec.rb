require 'bankaccount'

RSpec.describe 'bankaccount' do
  context 'on initialization' do
    it 'is initially empty' do
      account = BankAccount.new
      expect(account.balance).to eq(0)
    end
  end
end
