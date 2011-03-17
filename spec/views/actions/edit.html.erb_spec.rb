require 'spec_helper'

describe "actions/edit.html.erb" do
  before(:each) do
    @action = assign(:action, stub_model(Action))
  end

  it "renders the edit action form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => actions_path(@action), :method => "post" do
    end
  end
end
