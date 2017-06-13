require 'account'
require 'date'

describe Account do
  describe 'Account prints a statement' do
    it 'prints a statement' do
      @account = Account.new
      @account.deposit(10)
      header =
        "date || credit || debit || balance\n"
      transaction =
        "#{DateTime.now.strftime('%d/%m/%Y')} || 10.00 ||  || 10.00\n"
      expect { @account.statement }.to output(header + transaction).to_stdout
    end
  end
end
