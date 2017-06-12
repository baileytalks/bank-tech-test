require 'account'

## User Story 1:
## As a client,
## So I can save and spend money,
## I need to have a bank account.

describe Account do
  describe '#account' do
    it 'when initialized, is an account' do
      account = Account.new
      expect(account).to be_an_instance_of(Account)
    end
  end
end
