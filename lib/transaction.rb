class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(credit: nil, debit: nil, balance: 0, date: Time.now)
    Transaction.valid?(credit, debit)
    @date = "#{date.day}/#{date.month}/#{date.year}"
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def self.valid?(credit, debit)
    raise "Can't withdraw and deposit simultaneously" if (credit != nil && debit != nil)
  end

end
