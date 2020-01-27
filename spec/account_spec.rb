
describe "Account" do
  before :each do
    @start = 100
    @account = Account.new(@start)
  end

  it "Should show a balance" do
    expect(@account.show_balance).to include "#{@start}"
  end

  it "Should accept a deposit" do

  end

  it "Should allow a withdrawal" do

  end

  it "Should track amounts of all transactions" do

  end

  it "Should track times of all transactions" do

  end
end
