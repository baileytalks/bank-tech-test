require 'printer'
require 'date'

describe Printer do
  before(:each) do
    @date = Date.strptime('01/01/2001', '%d/%m/%Y')
    @transaction_list = [
      { date: @date, credit: 10, debit: nil, balance: 10 },
      { date: @date, credit: nil, debit: 5, balance: 5 }
    ]
    @statement = Printer.new(@transaction_list)
  end

  it 'prints the transaction list, most recent first, with a header' do
    header =
      "date || credit || debit || balance\n"
    transactions =
      "2001-01-01 ||  || 5.00 || 5.00\n2001-01-01 || 10.00 ||  || 10.00\n"
    expect { @statement.print }.to output(header + transactions).to_stdout
  end
end
