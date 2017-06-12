require 'account'

describe Account do
  describe 'Account Transactions' do
    before(:each) do
      @account = Account.new
      @date = DateTime.now.strftime('%d/%m/%Y')
    end

    it 'when depositing, details will be stored in the transaction list' do
      @account.deposit(10)
      expect(@account.transactions.length).to eq 1
    end

    it 'when depositing, the deposit amount and new balance are stored' do
      @account.deposit(10)
      credit_transaction = { date: @date, credit: 10, debit: nil, balance: 10 }
      expect(@account.transactions[0]).to eq credit_transaction
    end

    it 'when withdrawing, the withdrawal amount and new balance are stored' do
      @account.withdraw(10)
      debit_transaction = { date: @date, credit: nil, debit: 10, balance: -10 }
      expect(@account.transactions[0]).to eq debit_transaction
    end

    it 'when withdrawing, wrong withdrawal amount and balance are not stored' do
      @account.withdraw(20)
      debit_transaction = { date: @date, credit: nil, debit: 10, balance: -10 }
      expect(@account.transactions[0]).not_to eq debit_transaction
    end
  end
end
