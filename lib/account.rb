## User Story 1:
## As a client,
## So I can save and spend money,
## I need to have a bank account.

## User Story 2:
## As a client,
## So I can check how much money I have to spend,
## I need to have a bank balance.

## This class has responsibility for holding a bank balance
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end
end
