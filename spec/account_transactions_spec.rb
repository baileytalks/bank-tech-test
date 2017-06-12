require 'account'

describe Account do
  describe 'Account Transactions' do
    before(:each) do
      @account = Account.new
    end

    it 'when depositing, details will be stored in the transaction list' do
      @account.deposit(10)
      expect(@account.transactions.length).to eq 1
    end

    it 'when depositing, the deposit amount and balance are stored' do
      @account.deposit(10)
      date = DateTime.now.strftime('%d/%m/%Y')
      transaction = { date: date, credit: 10, debit: nil, balance: 10 }
      expect(@account.transactions[0]).to eq transaction
    end

    it 'when depositing, the wrong deposit amount and balance are not stored' do
      @account.deposit(20)
      date = DateTime.now.strftime('%d/%m/%Y')
      transaction = { date: date, credit: 10, debit: nil, balance: 10 }
      expect(@account.transactions[0]).not_to eq transaction
    end
  end
end
