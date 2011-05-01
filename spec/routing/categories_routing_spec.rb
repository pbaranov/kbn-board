require "spec_helper"

describe CategoriesController do
  describe "routing" do


    it "recognizes and generates #new" do
      { :get => "/boards/1/categories/new" }.should route_to(:controller => "categories", :action => "new",
                                                             :board_id=>"1")
    end

    it "recognizes and generates #show" do
      { :get => "/boards/1/categories/2" }.should route_to(:controller => "categories", :action => "show", 
                                                :board_id=>"1",:id => "2")
    end

    it "recognizes and generates #edit" do
      { :get => "/boards/1/categories/2/edit" }.should route_to(:controller => "categories", :action => "edit", 
                                                    :board_id => "1",:id=>"2")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/boards/1/categories/2" }.should route_to(:controller => "categories", :action => "destroy", 
                                                  :board_id => "1",:id=>"2")
    end

  end
end
