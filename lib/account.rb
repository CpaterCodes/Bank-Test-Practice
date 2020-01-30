require_relative "transaction"

class Account
attr_reader :balance
  def initialize(start_balance = 0, transaction = Transaction)
    @balance = start_balance
    @transactions = []
    @transaction = transaction
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

  def print_statement(statement_class = Statement)
   # Code pending
  end

end
