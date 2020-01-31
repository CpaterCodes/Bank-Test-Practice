require_relative "transaction"
require_relative "statement"

class Account
  def initialize(start_balance: nil, transaction: Transaction)
    raise "Account requires a starting balance" if start_balance.nil?

    @balance = start_balance
    @transactions = []
    @transaction = transaction
  end

  def deposit(sum)
    @balance += sum
    @transactions << @transaction.new(credit: "#{sum}.00", balance: "#{@balance}.00")
  end

  def withdraw(sum)
    raise "You do not have that amount stored" if sum > @balance

    @balance -= sum
    @transactions << @transaction.new(debit: "#{sum}.00", balance: "#{@balance}.00")
  end

  def print_statement(statement_class = Statement.new(@transactions))
    puts statement_class.compile
  end

  private

  attr_reader :balance

end
