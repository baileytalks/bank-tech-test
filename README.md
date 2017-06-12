# Bank Tech Test in Ruby

## Quickstart
* Clone the repo onto your local machine
* In your terminal, navigate to the relevant directory
* On the command line, open IRB
* Require the program:
```
$ require './lib/account.rb'
```
* Initialize an account with:
```
account = Account.new
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
