## This class has the responsibility of making a hash containing the details
## of a transaction, either debit or credit
class SingleTransaction
  def initialize(amount, balance)
    @amount   = amount
    @balance  = balance
    @debit    = nil
    @credit   = nil
    @date     = DateTime.now.strftime('%d/%m/%Y')
  end

  def debit_or_credit
    if @amount < 0
      @debit = @amount.abs
    else
      @credit = @amount
    end
  end

  def make_hash
    debit_or_credit
    { date: @date, credit: @credit, debit: @debit, balance: @balance }
  end
end
