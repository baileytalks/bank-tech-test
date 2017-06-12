require 'account'

describe Account do
  describe '#account' do
    before(:each) do
      @account = Account.new
    end

    ## User Story 1:
    ## As a client,
    ## So I can save and spend money,
    ## I need to have a bank account.
    it 'when initialized, is an account' do
      expect(@account).to be_an_instance_of(Account)
    end

    ## User Story 2:
    ## As a client,
    ## So I can check how much money I have to spend,
    ## I need to have a bank balance.
    it 'when initialized, has a bank balance of 0' do
      expect(@account.balance).to eq 0
    end
  end
end
