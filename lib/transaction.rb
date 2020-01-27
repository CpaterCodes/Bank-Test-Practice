class Transaction
  attr_reader :date, :credit, :debit, :balance

  def initialize(credit: nil, debit: nil, balance: 0)
    t = Time.now
    @date = "#{t.day}/#{t.month}/#{t.year}"
  end
end
