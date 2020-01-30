class Statement
  def initialize(transactions)
    @transactions = transactions
    @text = "date || credit || debit || balance\n"
  end

  def compile
    @transactions.each do |transaction|
      @text << "#{transaction.date} || #{transaction.credit} ||"
      @text << " #{transaction.debit} || #{transaction.balance}\n"
    end
    @text
  end

end
