require 'account'

describe Account do

  describe '#account', %q{
    As a client,
    So I can save and spend money,
    I need to have a bank account.
    } do

    it 'initializes with a client name' do
      account = Account.new('Client')
      expect(account.name).to eq 'Client'
    end
  end

end
