require 'spec_helper'

describe "actions/show.html.erb" do
  before(:each) do
    @action = assign(:action, stub_model(Action))
  end

  it "renders attributes in <p>" do
    render
  end
end
