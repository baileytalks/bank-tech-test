## This class is responsible for storing a list of transactions
## for one account
class TransactionList
  attr_reader :list

  def initialize
    @list = []
  end
end
