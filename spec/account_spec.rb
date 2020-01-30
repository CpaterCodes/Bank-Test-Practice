describe "Account" do

  before :each do
    @start = 100
    @account = Account.new(@start)
    @fake_statement = double("statement", compile: "date || credit || debit || balance\n")
  end

  it "Should accept a deposit" do
    @account.deposit(50)
    expect(@account.balance).to eq(@start + 50)
  end

  it "Should allow a withdrawal" do
    @account.withdraw(70)
    expect(@account.balance).to eq(@start - 70)
  end

  it "should produce a statement" do
    expect { @account.print_statement(@fake_statement) }.to output("date || credit || debit || balance\n").to_stdout
  end

  it "Should not allow negative balance" do
    expect { @account.withdraw(110) }.to raise_error "You do not have that amount stored"
  end
end
