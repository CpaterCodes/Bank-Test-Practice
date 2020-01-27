class Account

  def initialize(start_balance = 0, transaction = Transaction)
    @balance = start_balance
    @transactions = []
  end

  def show_balance
    return "Current balance: £#{@balance}"
  end

  def deposit(sum)
    @balance += sum
  end

  def withdraw(sum)
    @balance -= sum
  end

  def statement
    title
  end

  private

  def title
    "date || credit || debit || balance"
  end

  def row(transaction)
    "#{transaction.balance}"
  end
end
