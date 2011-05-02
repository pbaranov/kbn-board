Factory.define :category do |c|
	c.name "TestCategory"
	c.board Factory.create(:board)
end
