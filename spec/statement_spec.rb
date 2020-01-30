describe "Statement" do
  before :each do
    transaction_a = double("transaction", credit: 20, debit: nil, balance: 30, date: "1/1/2037")
    transaction_b = double("transaction", credit: nil, debit: 5, balance: 25, date: "1/1/2037")
    transactions = [transaction_a, transaction_b]
    @statement = Statement.new(transactions)
  end

  it "Should track end balances of all transactions" do
    expect(@statement.compile).to include("30")
    expect(@statement.compile).to include("25")
  end

  it "Should track dates of all transactions" do
    expect(@statement.compile).to include("1/1/2037")
  end

  it "Should show amounts deposited or withdrawn in transactions" do
    expect(@statement.compile).to include("20")
    expect(@statement.compile).to include("5")
  end
end
