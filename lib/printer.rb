## This class is responsible for printing the transactions in a clear
## statement format
class Printer
  def initialize(transaction_list)
    @transaction_list = transaction_list
  end

  def print
    puts 'date || credit || debit || balance'
    @transaction_list.each do |t|
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
