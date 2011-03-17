require 'spec_helper'

describe Category do
  it "should have name" do
  	Category.new.should have(1).errors_on(:name)
  end
  
  it "should belong to a board" do
  	Category.new(:name=>"my_category").should have(1).errors_on(:board)
  end
  
#  it "should be valid when name and board are set" do
 # 	board = Board.new :name=>'my_board'
  #	category = Category.new :name=>'my_category'
  #	board.categories << category
  #	category.board.should_not be_nil	
 # end
end
