require 'transaction_list'

describe TransactionList do
  it 'contains an array where transactions will be stored' do
    expect(subject.list).to be_a(Array)
  end

  it 'contains a transaction for an account in the form of a hash' do
    date = DateTime.now.strftime('%d/%m/%Y')
    transaction = { date: date, credit: 10, debit: nil, balance: 10 }
    subject.list.push(transaction)
    expect(subject.list).to include transaction
  end
end
