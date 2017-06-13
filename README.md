# Bank Tech Test in Ruby

## Quickstart
1. Clone the repo on your local machine
2. In your terminal, navigate to the bank-tech-test directory
3. Run 'bundle install' to install dependencies
4. Run 'rspec' to run the tests
5. To run the program, open irb
4. Follow these instructions to run the program:

i. Run the program and create a bank account:
```
> require './lib/account.rb'
=> true
> account = Account.new
=> #<Account:0x007fcde501f260 @balance=0, @transactions=[]>
```
ii. Deposit £10
```
> account.deposit(10)
=> [{:date=>"12/06/2017", :credit=>10, :debit=>nil, :balance=>10}]
```
iii. Withdraw £5
```
> account.withdraw(5)
=> [{:date=>"12/06/2017", :credit=>10, :debit=>nil, :balance=>10}, {:date=>"12/06/2017", :credit=>nil, :debit=>5, :balance=>5}]

```
iv. Display the balance
```
> account.balance
=> 5
```
v. Print a statement
```
> account.print
date || credit || debit || balance
12/06/2017 ||  || 5.00 || 5.00
12/06/2017 || 10.00 ||  || 10.00
 => nil
```

## User stories
```
As a client,
So I can save and spend money,
I need to have a bank account.

As a client,
So I can check how much money I have to spend,
I need to have a bank balance.

As a client,
So I can spend money,
I first need to deposit money into my bank account.

As a client,
So I can spend money,
I need to make withdrawals from my bank account.

As a client,
So I can check my transactions match what my bank has recorded,
I need to see a printed bank statement.

As a client,
So I can review my bank statement efficiently,
Transactions should be listed by date, with the newest first.
```

## How I Started
* Added a Gemfile with 'bundle init'
* Added rspec, rubocop and simplecov to the gemfile and installed them
* Added a .rspec file with formatting
* Added a spec_helper file to set up Simplecov for coverage to appear on tests
* Added a 'lib' folder and 'spec' folder
