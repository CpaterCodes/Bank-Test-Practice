describe "Account" do

  before :each do
    @d = Timecop.freeze(2037, 1, 1)
    @start = 100
    @account = Account.new(@start)
  end

  it "Should show a balance" do
    expect(@account.show_balance).to include "#{@start}"
  end

  it "Should accept a deposit" do
    @account.deposit(50)
    expect(@account.show_balance).to include "#{@start + 50}"
  end

  it "Should allow a withdrawal" do
    @account.withdraw(70)
    expect(@account.show_balance).to include "#{@start - 70}"
  end

  it "should produce a statement" do
    expect { @account.statement }.to output("date || credit || debit || balance\n").to_stdout
  end

  it "Should not allow negative balance" do
    expect { @account.withdraw(110) }.to raise_error "You do not have that amount stored"
  end
end
