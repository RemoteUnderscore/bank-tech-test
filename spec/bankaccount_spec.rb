require 'bankaccount'

RSpec.describe 'bankaccount' do
  context 'on initialization' do
    it 'is initially empty' do
      bankaccount = BankAccount.new
      expect(account).to eq(0)
    end
  end
end
