class Statement
  def initialize(transactions)
    @transactions = transactions
    @text = "date || credit || debit || balance\n"
  end

  def compile
    @transactions.each do |transaction|
      @text << "#{transaction.date}.00 || #{transaction.credit}.00 ||"
      @text << " #{transaction.debit}.00 || #{transaction.balance}.00\n"
    end
    @text
  end

end
