describe "Transaction" do

it "Should return the date in a readable format" do
  t = Time.now
  date = "#{t.day}/#{t.month}/#{t.year}"
  transaction = Transaction.new
  expect(transaction.date).to eq date
end

end
