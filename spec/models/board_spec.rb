require 'spec_helper'

describe Board do
      it "should have one error when name is not set" do
      	Board.new.should have(1).errors_on(:name) 
        Board.new(:name=>"my board").valid?.should be(true)
      end

	  
end
