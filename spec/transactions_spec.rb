require 'transactions'

## As a client,
## So I can check my transactions match what my bank has recorded,
## I need to see a printed bank statement.
describe Transactions do
  it 'contains an array where transactions will be stored' do
    expect(subject.list).to be_a(Array)
  end
end
