require './lib/transaction_list'
require './lib/single_transaction'
require './lib/printer'
require 'date'

## User Story 1:
## As a client,
## So I can save and spend money,
## I need to have a bank account.

## This class has responsibility for holding a bank balance and
## changing that bank balance through deposits and withdrawals
class Account
  attr_reader :balance, :transactions

  ## User Story 2:
  ## As a client,
  ## So I can check how much money I have to spend,
  ## I need to have a bank balance.
  def initialize
    @balance = 0
    @transactions = TransactionList.new.list
  end

  ## User Story 3:
  ## As a client,
  ## So I can spend money,
  ## I first need to deposit money into my bank account.
  def deposit(amount)
    @balance += amount
    transaction = SingleTransaction.new(amount, @balance).make_hash
    @transactions.push(transaction)
  end

  ## User Story 4:
  ## As a client,
  ## So I can spend money,
  ## I need to make withdrawals from my bank account.
  def withdraw(amount)
    @balance -= amount
    amount = -amount
    transaction = SingleTransaction.new(amount, @balance).make_hash
    @transactions.push(transaction)
  end

  def print
    Printer.new(@transactions).print
    nil
  end
end
