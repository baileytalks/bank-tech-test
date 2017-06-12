## This class is responsible for printing the transactions in a clear
## statement format
class Printer
  def initialize(transaction_list)
    @transaction_list = transaction_list
  end

  ## User Story 5:
  ## As a client,
  ## So I can check my transactions match what my bank has recorded,
  ## I need to see a printed bank statement.

  ## User Story 6:
  ## As a client,
  ## So I can review my bank statement efficiently,
  ## Transactions should be listed by date, with the newest first.
  def print
    puts 'date || credit || debit || balance'
    @transaction_list.reverse.each do |t|
      @credit   = change_to_currency(t[:credit])
      @debit    = change_to_currency(t[:debit])
      @balance  = change_to_currency(t[:balance])
      puts "#{t[:date]} || #{@credit} || #{@debit} || #{@balance}"
    end
  end

  private

  def change_to_currency(number)
    if !number.nil?
      format('%.2f', number)
    else
      number
    end
  end
end
