require 'spec_helper'

describe Board do
      it "should have one error when name is not set" do
      	Board.new.should have(1).errors_on(:name) 
        Board.new(:name=>"my board").valid?.should be(true)
      end

	  it "should create a category" do
	  	board = Board.new :name=>'my_board'
	  	board.save.should be_true
	  	category = board.categories.create(:name=>"my_category")
	  	category.should_not be_nil
	  	board.should have_exactly(1).categories
	  end
end
