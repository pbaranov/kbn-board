require "spec_helper"

describe UsersController do
  describe "routing" do
    
    it "recognize and generate #index " do
    	{:get => "/users"}.should route_to(:controller => "users",:action =>"index")
    end
    
    it "recognizes and generates #register" do
      { :get => "/register" }.should route_to(:controller => "users", :action => "new")
    end

    it "recognizes and generates #edit" do
      { :get => "/users/qwe/edit" }.should route_to(:controller => "users", :action => "edit", :user_login => "qwe")
    end

    it "recognizes and generates #create" do
      { :post => "/users" }.should route_to(:controller => "users", :action => "create")
    end

    it "recognizes and generates #show" do
      { :get => "/users/qwe" }.should route_to(:controller => "users", :action => "show", :user_login => "qwe")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/users/qwe" }.should route_to(:controller => "users", :action => "destroy", :user_login => "qwe")
    end

  end
end
