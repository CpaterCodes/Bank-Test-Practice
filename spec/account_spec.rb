
describe "Account" do
  before :each do
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

  it "Should track amounts of all transactions" do

  end

  it "Should track times of all transactions" do

  end
end
