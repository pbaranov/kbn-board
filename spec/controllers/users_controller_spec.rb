require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe UsersController do

  def mock_user(stubs={})
    @mock_user ||= mock_model(User, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all users as @users" do
      User.stub(:all) { [mock_user] }
      get :index
      assigns(:users).should eq([mock_user])
    end
  end

  describe "GET show" do
    it "assigns the requested user as @user" do
      User.stub(:find_by_login).with("qwe") { mock_user }
      get :show, :user_login => "qwe"
      assigns(:user).should be(mock_user)
    end
  end

  describe "GET new" do
    it "assigns a new user as @user" do
      User.stub(:new) { mock_user }
      get :new
      assigns(:user).should be(mock_user)
    end
  end

  describe "GET edit" do
    it "assigns the requested user as @user" do
      User.stub(:find_by_login).with("qwe") { mock_user }
      get :edit, :user_login => "qwe"
      assigns(:user).should be(mock_user)
    end
  end

  
  describe "DELETE destroy" do
    it "destroys the requested user" do
      User.stub(:find_by_login).with("qwe") { mock_user }
      mock_user.should_receive(:destroy)
      delete :destroy, :user_login => "qwe"
    end

    it "redirects to the users list" do
      User.stub(:find_by_login) { mock_user }
      delete :destroy, :user_login => "qwe"
      response.should redirect_to(users_url)
    end
  end

end
