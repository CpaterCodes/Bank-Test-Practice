require_relative "transaction"

class Account

  def initialize(start_balance = 0, transaction = Transaction)
    @balance = start_balance
    @transactions = []
    @transaction = transaction
  end

  def show_balance
    return "Current balance: £#{@balance}"
  end

  def deposit(sum)
    @balance += sum
    @transactions << @transaction.new(credit: sum, balance: @balance)
  end

  def withdraw(sum)
    raise "You do not have that amount stored" if sum > @balance

    @balance -= sum
    @transactions << @transaction.new(debit: sum, balance: @balance)
  end

  def statement
    text = title
    text << body
  end

  private

  def title
    "date || credit || debit || balance\n"
  end

  def body
    rows = ""
    @transactions.reverse.each do |i|
      rows << "#{i.date} || #{i.credit} || #{i.debit} || #{i.balance}\n"
    end
    return rows
  end
end
