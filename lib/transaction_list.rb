## As a client,
## So I can check my transactions match what my bank has recorded,
## I need to see a printed bank statement.

## This class is responsible for storing a list of transactions
## for one account
class TransactionList
  attr_reader :list

  def initialize
    @list = []
  end
end
