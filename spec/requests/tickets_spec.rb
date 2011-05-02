require 'spec_helper'

describe "Tickets" do
  describe "GET /tickets" do
    it "always valid status" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tickets_path
      response.status.should be(200)
    end
  end
  describe "GET /tickets/1" do
  	it "always returns valid status" do
  		Factory.create(:ticket)
  		get ticket_path(Factory.create(:ticket))
  		response.status.should be(200)
  	end
  end
end
