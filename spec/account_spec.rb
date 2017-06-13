require 'account'

describe Account do
  before(:each) do
    @account = Account.new
  end

  it 'when initialized, is an account' do
    expect(@account).to be_an_instance_of(Account)
  end

  it 'when initialized, has a bank balance of 0' do
    expect(@account.balance).to eq 0
  end

  it 'a client can deposit money without an error' do
    expect { @account.deposit(10) }.to_not raise_error
  end

  it 'depositing money increases the bank balance' do
    @account.deposit(10)
    expect(@account.balance).to eq 10
  end

  it 'a client can withdraw money without an error' do
    expect { @account.withdraw(10) }.to_not raise_error
  end

  it 'withdrawing money decreases the bank balance' do
    @account.withdraw(10)
    expect(@account.balance).to eq(-10)
  end
end
