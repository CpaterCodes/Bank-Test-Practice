describe "Transaction" do

  before :each do
    t = Time.now
    @date = "#{t.day}/#{t.month}/#{t.year}"
    @deposit = Transaction.new(credit: 10)
    @withdrawal = Transaction.new(debit: 10)
  end

  it "Should return the date in a readable format" do
    p @date
    expect(@deposit.date).to eq @date
  end

  it "Should return the amount deposited" do
    expect(@deposit.credit).to eq 10
  end

  it "Should return the amount withdrawn" do
    expect(@withdrawal.debit).to eq 10
  end

  it "Cannot both deposit and withdraw" do
    expect{ Transaction.new(debit: 10, credit: 10) }.to raise_error "Can't withdraw and deposit simultaneously"
  end
end
