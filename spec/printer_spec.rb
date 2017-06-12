require 'printer'
require 'date'

describe Printer do
  before(:each) do
    @date = Date.strptime('01/01/2001', '%d/%m/%Y')
    @transaction_list = [
      { date: @date, credit: 10, debit: nil, balance: 10 }
    ]
    @statement = Printer.new(@transaction_list)
  end

  it 'prints the transaction list with a header' do
    string =
      "date || credit || debit || balance\n2001-01-01 || 10.00 ||  || 10.00\n"
    expect { @statement.print }.to output(string).to_stdout
  end
end
