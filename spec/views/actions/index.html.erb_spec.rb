require 'spec_helper'

describe "actions/index.html.erb" do
  before(:each) do
    assign(:actions, [
      stub_model(Action),
      stub_model(Action)
    ])
  end

  it "renders a list of actions" do
    render
  end
end
