require './lib/transaction_list'
require './lib/single_transaction'
require './lib/printer'
require 'date'

## This class has responsibility for holding a bank balance and
## changing that bank balance through deposits and withdrawals
class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = TransactionList.new.list
  end

  def deposit(amount)
    @balance += amount
    store_transaction(SingleTransaction.new(amount, @balance).make_hash)
  end

  def withdraw(amount)
    @balance -= amount
    amount = -amount
    store_transaction(SingleTransaction.new(amount, @balance).make_hash)
  end

  ## Prints the statement without printing the object
  def statement
    Printer.new(@transactions).print
    nil
  end

  private

  def store_transaction(transaction)
    @transactions.push(transaction)
  end
end
