describe "Account" do

  class FakeTransaction
    attr_reader :date, :credit, :debit, :balance
    def initialize (credit: nil, debit: nil, balance:0)
      @date = "#{Time.now.day}/#{Time.now.month}/#{Time.now.year}"
      @credit = credit
      @debit = debit
      @balance = balance
    end
  end

  let(:transaction) { double('fake transaction')}
  before :each do
    @d = Time.now
    @start = 100
    @account = Account.new(@start, FakeTransaction)
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
    expect(@account.statement).to include("date || credit || debit || balance\n")
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
    @account.withdraw(10)
    expect(@account.statement).to include("#{@d.day}/#{@d.month}/#{@d.year}")
  end

  it "Should show amounts deposited or withdrawn in transactions" do
    @account.withdraw(90)
    @account.deposit(20)
    expect(@account.statement).to include("90")
    expect(@account.statement).to include("20")
  end

  it "Should not allow negative balance" do
    expect { @account.withdraw(110) }.to raise_error "You do not have that amount stored"
  end
end
