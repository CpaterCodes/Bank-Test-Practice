describe "Account" do
  before :each do
    @start = 100
    @account = Account.new(@start)
    @date = Time.now
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
    expect(@account.statement).to include "date || credit || debit || balance"
  end

  it "Should track end balances of all transactions" do
    @account.withdraw(30)
    @account.deposit(100)
    @account.withdraw(20)
    expect(@account.statement).to include("#{@start - 30}")
    expect(@account.statement).to include("#{@start + 70}")
    expect(@account.statement).to include("#{@start + 50}")
  end

  it "Should track dates of all transactions" do

  end
end
