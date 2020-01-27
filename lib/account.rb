class Account

  def initialize(start_balance = 0)
    @balance = start_balance
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
end
