require File.dirname(__FILE__) + '/../spec_helper'
 
describe UsersController do

  describe "Handlig POST user" do
    before(:each) do
      @user = mock_model(User, :to_param => "1")
      User.stub!(:new).and_return(@user)
    end
    
    it "should render new template" do
      get :new
      response.should render_template(:new)
    end
    
    describe "with successful save" do

      def do_post
        @user.should_receive(:save).and_return(true)
        post :create, :user => {}
      end
      
      it "should create a new user" do
        User.should_receive(:new).with({}).and_return(@user)
        do_post
      end
      
      it "create action should redirect when model is valid" do
        User.any_instance.stubs(:valid?).returns(true)
        do_post
        response.should redirect_to(root_url)
      end
    end

    describe "with failed save" do
      def do_post
        @user.should_receive(:save).and_return(false)
        post :create, :user => {}
      end
      
      it "should render new template when model is invalid" do
        User.any_instance.stubs(:valid?).returns(false)
        do_post
        response.should render_template(:new)
      end
    end
  end
  
  describe "handling GET /user/1/edit" do
    
    before(:each) do
      @user = mock_model(User)
      User.stub!(:find).and_return(@user)
    end
  
    def do_get
      get :edit, :id => "1"
    end
    
    it "should be successful" do
      do_get
      response.should be_success
    end
    
    it "should render edit template" do
      do_get
      response.should render_template(:edit)
    end

    it "should find the user requested" do
      User.should_receive(:find).and_return(@user)
      do_get
    end

    it "should assign the found User for the view" do
      do_get
      assigns[:user].should equal(@user)
    end
  end
  
  describe "handling PUT /people/1" do

    before(:each) do
      @user = mock_model(User, :to_param => "1")
      User.stub!(:find).and_return(@user)
    end

    describe "with successful update" do

      def do_put
        @user.should_receive(:update_attributes).and_return(true)
        put :update, :id => "1"
      end

      it "should find the user requested" do
        User.should_receive(:find).with("1").and_return(@user)
        do_put
      end

      it "should update the found user" do
        do_put
        assigns(:user).should equal(@user)
      end

      it "should assign the found user for the view" do
        do_put
        assigns(:user).should equal(@user)
      end
          
      it "update action should redirect when model is valid" do
        User.any_instance.stubs(:valid?).returns(true)
        do_put
        response.should redirect_to(root_url)
      end
      
    end

    describe "with failed update" do
      
      def do_put
        @user.should_receive(:update_attributes).and_return(false)
        put :update, :id => "1"
      end
      
      it "should render edit template when model is invalid" do
        User.any_instance.stubs(:valid?).returns(false)
        do_put
        response.should render_template(:edit)
      end
      
    end
    
  end
end
