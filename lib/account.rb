class Account

  def initialize(start_balance = 0)
    @balance = start_balance
  end

  def show_balance
    return "Current balance: £#{@balance}"
  end
end
