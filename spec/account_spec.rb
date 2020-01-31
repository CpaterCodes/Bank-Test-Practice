describe "Account" do

  before :each do
    fake_transaction = class_double('transaction')
    allow(fake_transaction).to receive(:new).with({ balance: "150.00", credit: "50.00" })
    @start = 100
    @account = Account.new(@start, fake_transaction)
    @fake_statement = double("statement", compile: "date || credit || debit || balance\n1/1/2037 || || 10.00 || 20.00")
  end

  it "Requires a starting balance" do
    expect { Account.new }.to raise_error "Account requires a starting balance"
  end

  it "Should accept a deposit" do
    @account.deposit(50)
    expect(@account).to respond_to(:deposit)
  end

  it "Should allow a withdrawal" do
    @account.withdraw(70)
    expect(@account).to respond_to(:withdraw)
  end

  it "should produce a statement" do
    expect { @account.print_statement(@fake_statement) }.to output("date || credit || debit || balance\n1/1/2037 || || 10.00 || 20.00\n").to_stdout
  end

  it "Should not allow negative balance" do
    expect { @account.withdraw(110) }.to raise_error "You do not have that amount stored"
  end
end
