Factory.define :ticket do |t|
	t.name  "TestTicket"
	t.category Factory.create(:category)
end
